//
//  GeneratePassword.swift
//  RandomPassword
//
//  Created by Adam Chamberlin on 25/07/2015.
//  Copyright (c) 2015 Adam Chamberlin. All rights reserved.
//

import Foundation

private let characters = Array("0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ".characters)

func generateRandomString(length: Int) -> String {
  
  // Start with an empty string
  var string = ""
  
  // Append length number of random characters
  for _ in 0..<length {
    string.append(generateRandomCharacter())
  }
  
  return string
}

func generateRandomCharacter() -> Character {
  
  // Create a random index into the characters array
  let index = Int(arc4random_uniform(UInt32(characters.count)))
  
  // Get and return a random character
  let character = characters[index]
    
  return character
}