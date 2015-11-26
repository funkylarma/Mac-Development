//
//  AppDelegate.swift
//  SpeakLine
//
//  Created by Adam Chamberlin on 26/11/2015.
//  Copyright © 2015 Adam Chamberlin. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

  var mainWindowController: MainWindowController?
  
  func applicationDidFinishLaunching(aNotification: NSNotification) {
    // Insert code here to initialize your application
    
    // Create a window controller
    let mainWindowController = MainWindowController()
    
    // Put the window controller on screen
    mainWindowController.showWindow(self)
    
    // Set the property to point to the window controller
    self.mainWindowController = mainWindowController
  }

}

