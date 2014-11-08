//
//  ViewController.swift
//  MusicFan
//
//  Created by onix on 11/8/14.
//  Copyright (c) 2014 tekhne. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  
  let iTunesUrl = NSURL(string: "https://itunes.apple.com/search?term=beatles&entity=song&limit=20")
  
  let urlSession = NSURLSession.sharedSession()

  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    
    let urlRequest = NSURLRequest(URL: iTunesUrl!)
    
    let jsonResult = urlSession.dataTaskWithRequest(urlRequest, completionHandler: { (data, response, error) -> Void in
      
      if error != nil {
        println("Error : \(error.localizedDescription)")
      }
      
      println("Response : \(response.description)")
      
      println("Data : \(data)")
      
      var err : NSError?
      
      var json = NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions.MutableContainers, error: &err) as NSDictionary
      
      println("JSON : \(json)")
      
      
    })
    
    jsonResult.resume()
    
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

