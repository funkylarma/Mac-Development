//
//  MainWindowController.swift
//  SpeakLine
//
//  Created by Adam Chamberlin on 26/11/2015.
//  Copyright © 2015 Adam Chamberlin. All rights reserved.
//

import Cocoa

class MainWindowController: NSWindowController, NSSpeechSynthesizerDelegate, NSWindowDelegate {
  
  @IBOutlet weak var textField: NSTextField!
  @IBOutlet weak var speakButton: NSButton!
  @IBOutlet weak var stopButton: NSButton!
  
  let speechSynth = NSSpeechSynthesizer()
  
  var isStarted: Bool = false {
    didSet {
      updateButtons()
    }
  }
  
  override var windowNibName: String {
    return "MainWindowController"
  }

  override func windowDidLoad() {
    super.windowDidLoad()
    speechSynth.delegate = self
    updateButtons()
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
  
  // MARK: - NSSpeechSynthesizerDelegate methods
  
  func speechSynthesizer(sender: NSSpeechSynthesizer, didFinishSpeaking finishedSpeaking: Bool) {
    
    isStarted = false
    print("finishedSpeaking=\(finishedSpeaking)")
  }
  
  // MARK: - NSWindowDelegate methods
  
  func windowShouldClose(sender: AnyObject) -> Bool {
    return !isStarted
  }

}
