//
//  ViewController.swift
//  SuperMarioBook
//
//  Created by onix on 11/1/14.
//  Copyright (c) 2014 tekhne. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
  
  let characters = ServiceProvider.characteres()

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

  // Metodos del protocolo UITableViewDataSource
  func numberOfSectionsInTableView(tableView: UITableView) -> Int {
    return 1
  }
  
  func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return characters.count
  }
  
  func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    
//    var cell = tableView.dequeueReusableCellWithIdentifier("CharacterCell", forIndexPath: indexPath) as UITableViewCell
//
//    cell.textLabel.text = "Titulo : \(indexPath.row)"
//    cell.detailTextLabel?.text = "detalle de la fila"

    var cell = tableView.dequeueReusableCellWithIdentifier("CharacterCell", forIndexPath: indexPath) as CharacterCell
    
    let character = characters[indexPath.row]
    
    cell.nameLabel.text = character.name
    cell.detailLabel.text = "\(character.console) - \(character.year)"
    cell.photoImage.image = character.image
    
    return cell
  }
  

}

