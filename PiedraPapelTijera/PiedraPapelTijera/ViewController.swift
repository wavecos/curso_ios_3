//
//  ViewController.swift
//  PiedraPapelTijera
//
//  Created by onix on 10/11/14.
//  Copyright (c) 2014 xiobit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  let jugadas = ["piedra", "papel", "tijera"]
  
  
  @IBOutlet weak var imagen: UIImageView!
  
  @IBAction func jugarAhora(sender: AnyObject) {
    let indice = Int(rand() % 3)
    let jugada = jugadas[indice]
    println("jugada es : \(jugada)")
    
    imagen.image = UIImage(named: jugada)
  }

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

