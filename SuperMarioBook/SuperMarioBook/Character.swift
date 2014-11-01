//
//  Character.swift
//  SuperMarioBook
//
//  Created by onix on 11/1/14.
//  Copyright (c) 2014 tekhne. All rights reserved.
//

import Foundation
import UIKit

class Character {
  
  var name : String
  var console : String
  var year : Int
  var notes : String
  var image : UIImage
  
  init(name: String,
       console : String,
       year : Int,
       notes : String,
       image : UIImage) {
    
      self.name = name
      self.console = console
      self.year = year
      self.notes = notes
      self.image = image
  }
  
}
