//
//  ViewController.swift
//  TestMVC
//
//  Created by onix on 10/25/14.
//  Copyright (c) 2014 tekhne. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
  @IBOutlet weak var saludoLabel: UILabel!
  @IBOutlet weak var okButton: UIButton!
  @IBOutlet weak var nombreTextField: UITextField!

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    println("Entre al ViewController")
    nombreTextField.delegate = self
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  @IBAction func okTapped(sender: AnyObject) {
    println("El boton se ha presionado...")
    saludar()
  }
  
  
  func saludar() {
    saludoLabel.text = "Hola " + nombreTextField.text
    //saludoLabel.textColor = UIColor.greenColor()
    saludoLabel.textColor = UIColor(red: 0.5, green: 0.3, blue: 0.2, alpha: 1)
    //    okButton.enabled = false
    
    self.view.backgroundColor = UIColor(red: randomValue(),green: randomValue(), blue:randomValue(), alpha: 1)
  }

  func randomValue() -> CGFloat {
    return CGFloat(rand()) / CGFloat(UINT32_MAX)
  }

  // Metodos del UITextFieldDelegate
  func textFieldDidBeginEditing(textField: UITextField) {
    println("el usuario comenzo a escribir")
  }
  
  func textFieldShouldReturn(textField: UITextField) -> Bool {
    println("se ha presionado Return")
    nombreTextField.resignFirstResponder()
    saludar()
    return true
  }

}

