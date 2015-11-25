//
//  MainWindowController.swift
//  RandomPassword
//
//  Created by Adam Chamberlin on 25/07/2015.
//  Copyright (c) 2015 Adam Chamberlin. All rights reserved.
//

import Cocoa

class MainWindowController: NSWindowController {
  
  @IBOutlet weak var textField: NSTextField!
  
  override var windowNibName: String? {
    return "MainWindowController"
  }

  override func windowDidLoad() {
    super.windowDidLoad()

    // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
    print("window loaded from NIB named \(windowNibName)")
  }
  
  deinit {
    print("\(self) will be deallocated")
  }
  
  @IBAction func generatePassword(sender: AnyObject) {
    
    // Get a random string of length 8
    let length = 8
    let password = generateRandomString(length)
    
    // Tell the text field to display the string
    textField.stringValue = password
  }
  
}
