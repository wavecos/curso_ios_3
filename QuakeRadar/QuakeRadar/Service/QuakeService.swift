//
//  QuakeService.swift
//  QuakeRadar
//
//  Created by onix on 11/22/14.
//  Copyright (c) 2014 tekhne. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON
import CoreLocation

class QuakeService {
  
  let quakeUrl = "http://earthquake.usgs.gov/earthquakes/feed/v0.1/summary/all_hour.geojson"
  
  var delegate : QuakeDelegate?
  
  init() {
    
  }

  func getAllQuakesFromLastHour() {
    var quakes : [Quake] = [Quake]()

    Alamofire.request(.GET, quakeUrl).responseJSON { (request, response, dataJson, error) -> Void in
      
      if error == nil {
        let json = JSON(dataJson!)
        let features = json["features"].arrayValue
        
        for feature in features {
          let magnitude = feature["properties"]["mag"].doubleValue
          let place = feature["properties"]["place"].stringValue
          
          let time = feature["properties"]["time"].doubleValue
          let date = NSDate(timeIntervalSince1970: time / 1000)
          
          let url = feature["properties"]["url"].stringValue
          let urlInfo = NSURL(string: url)
          
          let longitud = feature["geometry"]["coordinates"][0].doubleValue
          let latitude = feature["geometry"]["coordinates"][1].doubleValue
          
          let location = CLLocation(latitude: latitude, longitude: longitud)
          
          
          let quake = Quake(magnitude: magnitude, place: place, date: date, urlInfo: urlInfo!, location: location)
          
          quakes.append(quake)
          
        }
        
        self.delegate?.quakesReceived(quakes)
        
      }
    }
    
  }

  
}




