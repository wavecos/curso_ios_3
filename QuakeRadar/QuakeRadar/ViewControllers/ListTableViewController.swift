//
//  ListTableViewController.swift
//  QuakeRadar
//
//  Created by onix on 11/22/14.
//  Copyright (c) 2014 tekhne. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON
import CoreLocation

class ListTableViewController: UITableViewController, QuakeDelegate {
  
  var quakes : [Quake] = [Quake]()
  let quakeService = QuakeService()
  
  override func viewDidLoad() {
    super.viewDidLoad()
   
    quakeService.delegate = self
    quakeService.getAllQuakesFromLastHour()
    
    
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
  }
  
  // MARK: - Table view data source
  
  override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
    return 1
  }
  
  override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return self.quakes.count
  }
  
  override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    
    let cell = tableView.dequeueReusableCellWithIdentifier("QuakeCell", forIndexPath: indexPath) as UITableViewCell
    
    let q = quakes[indexPath.row]
    
    cell.textLabel.text = q.place
    cell.detailTextLabel?.text = "\(q.magnitude!)"
    
    return cell
    
  }
  
  // MARK: - Quake Delegate Methods
  
  func quakesReceived(quakes: [Quake]) {
    println("terremotos recibidos")
    println(quakes)
    
    self.quakes = quakes
    
    self.tableView.reloadData()
    
  }
  
  
  
}
