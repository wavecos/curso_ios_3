//
//  MapViewController.swift
//  QuakeRadar
//
//  Created by onix on 11/22/14.
//  Copyright (c) 2014 tekhne. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController, QuakeDelegate {
  
  let quakeService = QuakeService()
  
  // Outlets
  @IBOutlet weak var mapView: MKMapView!
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    quakeService.delegate = self
    quakeService.getAllQuakesFromLastHour()
    
    
    
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
  }
  
  
  // Actions
  @IBAction func satelliteTapped(sender: AnyObject) {
    self.mapView.mapType = MKMapType.Satellite

  }
  
  @IBAction func standarTapped(sender: AnyObject) {
    self.mapView.mapType = MKMapType.Standard

  }

  //MARK: - Quake Delagate
  
  func quakesReceived(quakes: [Quake]) {
    
    var quakeAnnotations = [MKPointAnnotation]()
    
    for q in quakes {
    
      var annotation = MKPointAnnotation()
      
      annotation.title = q.place
      annotation.subtitle = "\(q.magnitude!) - \(q.date!.description)"
      annotation.coordinate = q.location!.coordinate
      
      quakeAnnotations.append(annotation)
    }
    
    self.mapView.addAnnotations(quakeAnnotations)
    
  }

  
  
}
