//
//  MainWindowController.swift
//  SpeakLine
//
//  Created by Adam Chamberlin on 26/11/2015.
//  Copyright © 2015 Adam Chamberlin. All rights reserved.
//

import Cocoa

class MainWindowController: NSWindowController, NSSpeechSynthesizerDelegate, NSWindowDelegate, NSTableViewDataSource, NSTableViewDelegate {
  
  @IBOutlet weak var textField: NSTextField!
  @IBOutlet weak var speakButton: NSButton!
  @IBOutlet weak var stopButton: NSButton!
  @IBOutlet weak var tableView: NSTableView!
  
  let speechSynth = NSSpeechSynthesizer()
  let voices = NSSpeechSynthesizer.availableVoices()
  
  var isStarted: Bool = false {
    didSet {
      updateButtons()
    }
  }
  
  // MARK: - View life cycle
  
  override var windowNibName: String {
    return "MainWindowController"
  }

  override func windowDidLoad() {
    super.windowDidLoad()
    speechSynth.delegate = self
    updateButtons()
    for voice in voices {
      print(voiceNameForIdentifier(voice)!)
    }
    let defaultVoice = NSSpeechSynthesizer.defaultVoice()
    if let defaultRow = voices.indexOf(defaultVoice) {
      let indices = NSIndexSet(index: defaultRow)
      tableView.selectRowIndexes(indices, byExtendingSelection: false)
      tableView.scrollRowToVisible(defaultRow)
    }
  }
  
  // MARK: - Action methods
  
  @IBAction func speakIt(sender: NSButton) {
    
    // Get typed-in text as a string
    let string = textField.stringValue
    if string.isEmpty {
      print("string from \(textField) is empty")
    } else {
      print("string is \"\(textField.stringValue)\"")
      speechSynth.startSpeakingString(string)
      isStarted = true
    }
  }
    
  @IBAction func stopIt(sender: NSButton) {
    print("stop button clicked")
    speechSynth.stopSpeaking()
    isStarted = false
  }
  
  // MARK: - Instance methods
  
  func updateButtons() {
    
    if isStarted {
      speakButton.enabled = false
      stopButton.enabled = true
    } else {
      speakButton.enabled = true
      stopButton.enabled = false
    }
  }
  
  func voiceNameForIdentifier(identifier: String) -> String? {
    let attributes = NSSpeechSynthesizer.attributesForVoice(identifier)
    return attributes[NSVoiceName] as? String
  }
  
  // MARK: - NSSpeechSynthesizerDelegate methods
  
  func speechSynthesizer(sender: NSSpeechSynthesizer, didFinishSpeaking finishedSpeaking: Bool) {
    
    isStarted = false
    print("finishedSpeaking=\(finishedSpeaking)")
  }
  
  // MARK: - NSWindowDelegate methods
  
  func windowShouldClose(sender: AnyObject) -> Bool {
    return !isStarted
  }
  
  // MARK: - NSTableViewDataSource methods
  
  func numberOfRowsInTableView(tableView: NSTableView) -> Int {
    return voices.count
  }
  
  func tableView(tableView: NSTableView, objectValueForTableColumn tableColumn: NSTableColumn?, row: Int) -> AnyObject? {
    let voice = voices[row]
    let voiceName = voiceNameForIdentifier(voice)
    return voiceName
  }
  
  // MARK: - NSTableViewDelegate methods
  
  func tableViewSelectionDidChange(notification: NSNotification) {
    let row = tableView.selectedRow
    
    // Set the voice back to the default if the user has delected all rows
    if row == -1 {
      speechSynth.setVoice(nil)
      return
    }
    
    let voice = voices[row]
    speechSynth.setVoice(voice)
  }

}
