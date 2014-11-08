//
//  ViewController.swift
//  SuperMarioBook
//  Esta clase es el manejo del Listado de Personajes
//  Created by onix on 11/1/14.
//  Copyright (c) 2014 tekhne. All rights reserved.
//

import UIKit
import AVFoundation

class ListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
  
  let characters = ServiceProvider.characteres()
  var characterSelected : Character?
  
  // audio
  var audioPlayer : AVAudioPlayer?
  let audioUrl = CFBundleCopyResourceURL(CFBundleGetMainBundle(), "super_mario_song", "mp3", nil)

  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    
    audioPlayer = AVAudioPlayer(contentsOfURL: audioUrl, error: nil)
    
    if let sound = audioPlayer {
      sound.prepareToPlay()
      sound.numberOfLoops = -1
      sound.volume = 0.4 // Volumen entre 0 y 1
      sound.play()
    }
    
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
  
  func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
    println("La fila seleccionada es \(indexPath.row) de la seccion : \(indexPath.section)")
    
    self.characterSelected = self.characters[indexPath.row]
    self.performSegueWithIdentifier("detailSegue", sender: nil)
  }
  
  @IBAction func okTapped(sender: AnyObject) {
    
    self.performSegueWithIdentifier("demoSegue", sender: nil)
    
  }
  
  
  
  override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    
    if segue.identifier == "detailSegue" {
      
      var detailVC = segue.destinationViewController as DetailViewController
      detailVC.character = characterSelected
//      detailVC.title = characterSelected!.name
    } else if segue.identifier == "demoSegue" {
      println("Voy a ir al VIew Controller Naranja...")
    }
    
    
    
    
  }

}

