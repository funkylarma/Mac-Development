//
//  MainWindowController.swift
//  Thermostat
//
//  Created by Adam Chamberlin on 30/11/2015.
//  Copyright © 2015 Adam Chamberlin. All rights reserved.
//

import Cocoa

class MainWindowController: NSWindowController {
  
  dynamic var isOn = true
  private var privateTemperature = 68
  dynamic var temperature: Int {
    set {
      print("set tempererature to \(newValue)")
      privateTemperature = newValue
    }
    get {
      print("get temperature")
      return privateTemperature
    }
  }
  
  override var windowNibName: String {
    return "MainWindowController"
  }

  override func windowDidLoad() {
    super.windowDidLoad()

    // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
  }
  
  override func setNilValueForKey(key: String) {
    switch key {
      case "temperature":
        temperature = 68
      default:
        super.setNilValueForKey(key)
    }
  }
  
  // MARK: - Action methods
  
  @IBAction func makeWarmer(sender: NSButton) {
    temperature++
  }
  
  @IBAction func makeCooler(sender: NSButton) {
    temperature--
  }
  
}
