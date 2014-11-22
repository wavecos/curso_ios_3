//
//  MapViewController.swift
//  QuakeRadar
//
//  Created by onix on 11/22/14.
//  Copyright (c) 2014 tekhne. All rights reserved.
//

import UIKit

class MapViewController: UIViewController, QuakeDelegate {
  
  let quakeService = QuakeService()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    quakeService.delegate = self
    quakeService.getAllQuakesFromLastHour()
    
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
  }
  
  func quakesReceived(quakes: [Quake]) {
    println("recibido en el MAPA")
    
    for q in quakes {
      println(q.place)
    }
    
  }
  
  
}
