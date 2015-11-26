//
//  MainWindowController.swift
//  RGBWell
//
//  Created by Adam Chamberlin on 25/11/2015.
//  Copyright © 2015 Adam Chamberlin. All rights reserved.
//

import Cocoa

class MainWindowController: NSWindowController {
  
  var r = 0.0
  var g = 0.0
  var b = 0.0
  let a = 1.0
  
  @IBOutlet weak var rSlider: NSSlider!
  @IBOutlet weak var gSlider: NSSlider!
  @IBOutlet weak var bSlider: NSSlider!
  @IBOutlet weak var colourWell: NSColorWell!
  
  override var windowNibName: String? {
    return "MainWindowController"
  }
  
  override func windowDidLoad() {
    super.windowDidLoad()
    rSlider.doubleValue = r
    gSlider.doubleValue = g
    bSlider.doubleValue = b
    updateColour()
  }
  
  @IBAction func adjustRed(sender: NSSlider) {
    print("R slider's value is \(sender.floatValue)")
    r = sender.doubleValue
    updateColour()
  }
  
  @IBAction func adjustGreen(sender: NSSlider) {
    print("G slider's value is \(sender.floatValue)")
    g = sender.doubleValue
    updateColour()
  }
  
  @IBAction func adjustBlue(sender: NSSlider) {
    print("B slider's value is \(sender.floatValue)")
    b = sender.doubleValue
    updateColour()
  }
  
  func updateColour() {
    let newColour = NSColor(calibratedRed: CGFloat(r), green: CGFloat(g), blue: CGFloat(b), alpha: CGFloat(a))
    colourWell.color = newColour
  }
  
}