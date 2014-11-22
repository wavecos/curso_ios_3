//
//  Quake.swift
//  QuakeRadar
//
//  Created by onix on 11/22/14.
//  Copyright (c) 2014 tekhne. All rights reserved.
//

import Foundation
import CoreLocation

class Quake {
  
  var magnitude : Double?
  var place : String?
  var date : NSDate?
  var urlInfo : NSURL?
  var location : CLLocation?
  
  init(magnitude : Double, place : String, date : NSDate, urlInfo : NSURL, location : CLLocation) {
  
    self.magnitude = magnitude
    self.place = place
    self.date = date
    self.urlInfo = urlInfo
    self.location = location
    
  }
  
}

