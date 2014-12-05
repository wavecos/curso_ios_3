//
//  SongViewController.swift
//  MusicFan
//
//  Created by onix on 12/5/14.
//  Copyright (c) 2014 tekhne. All rights reserved.
//

import UIKit
import AVFoundation

class SongViewController: UIViewController {
  
  var song : Song?
  var audioPlayer : AVAudioPlayer?
  let urlSession = NSURLSession.sharedSession()
  
  // Outlets
  @IBOutlet weak var albumImage: UIImageView!
  @IBOutlet weak var priceLabel: UILabel!
  @IBOutlet weak var songLabel: UILabel!
  @IBOutlet weak var artistLabel: UILabel!
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    self.loadUI()
    
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  //MARK: - Load UI
  
  func loadUI() {
    
    if let s = self.song {
      self.title = s.trackName
      
      self.priceLabel.text = "\(s.price!) USD"
      self.songLabel.text = "\(s.trackName!) - \(s.collectionName!)"
      self.artistLabel.text = s.artistName
      
      
      let imageRequest : NSURLRequest = NSURLRequest(URL: s.albumImageUrl!)
      
      NSURLConnection.sendAsynchronousRequest(imageRequest, queue: NSOperationQueue.mainQueue()) { (response, imageData, error) -> Void in
        
        if error == nil {
          let imageAlbum = UIImage(data: imageData)
          
          dispatch_async(dispatch_get_main_queue(), { () -> Void in
            self.albumImage.image = imageAlbum
          })
        }
      }
    }
  }

  // Actions
  @IBAction func playTapped(sender: AnyObject) {
    
    let urlRequest = NSURLRequest(URL: self.song!.previewUrl!)
    
    let dataResult = urlSession.dataTaskWithRequest(urlRequest, completionHandler: { (data, response, error) -> Void in
      
      if error != nil {
        println("Error : \(error.localizedDescription)")
      }
      
      // Volviendo al hilo Principal
      dispatch_async(dispatch_get_main_queue(), { () -> Void in
        
        self.audioPlayer = AVAudioPlayer(data: data, error: nil)
        
        if let sound = self.audioPlayer {
          sound.prepareToPlay()
          sound.numberOfLoops = -1
          sound.volume = 1 // Volumen entre 0 y 1
          sound.play()
        }

      })
      
    })

    dataResult.resume()
    
  }
  
}
