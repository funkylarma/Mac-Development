//
//  AppDelegate.swift
//  RandomPassword
//
//  Created by Adam Chamberlin on 25/07/2015.
//  Copyright (c) 2015 Adam Chamberlin. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

  var mainWindowController: MainWindowController?

  func applicationDidFinishLaunching(aNotification: NSNotification) {
    // Insert code here to initialize your application
    
    // Create a window controller with a XIB file of the same name
    let mainWindowController = MainWindowController()
    
    // Put the window of the window controller on screen
    mainWindowController.showWindow(self)
    
    // Set the property to point to the window controller
    self.mainWindowController = mainWindowController
    
  }

  func applicationWillTerminate(aNotification: NSNotification) {
    // Insert code here to tear down your application
  }


}

