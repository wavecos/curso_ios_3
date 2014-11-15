//
//  ListViewController.swift
//  MusicFan
//
//  Created by onix on 11/15/14.
//  Copyright (c) 2014 tekhne. All rights reserved.
//

import UIKit

class ListViewController : UIViewController, UITableViewDataSource, UITableViewDelegate, UITextFieldDelegate {
  
  @IBOutlet weak var songsTable: UITableView!
  @IBOutlet weak var searchTextField: UITextField!
  
  let urlSession = NSURLSession.sharedSession()

  var songs : [Song] = [Song]()
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    self.songsTable.dataSource = self
    self.songsTable.delegate = self
    self.searchTextField.delegate = self
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  //MARK: - Metodos del UITableViewDataSource
  
  func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return self.songs.count
  }
  
  func numberOfSectionsInTableView(tableView: UITableView) -> Int {
    return 1
  }
  
  func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    
    let cell = tableView.dequeueReusableCellWithIdentifier("SongCell", forIndexPath: indexPath) as UITableViewCell
    
    let song = self.songs[indexPath.row]
    
    cell.textLabel.text = song.trackName!
    cell.detailTextLabel?.text = "\(song.collectionName!) - \(song.artistName!) - \(song.price!)"

    // Traer la Imagen sin Uso de Hilos
//    let imageData = NSData(contentsOfURL: song.albumImageUrl!)
//    cell.imageView.image = UIImage(data: imageData!)

    // Traemos la imagen asíncronamente
    
    let imageRequest : NSURLRequest = NSURLRequest(URL: song.albumImageUrl!)
    
    NSURLConnection.sendAsynchronousRequest(imageRequest, queue: NSOperationQueue.mainQueue()) { (response, imageData, error) -> Void in
      
      if error == nil {
        let imageAlbum = UIImage(data: imageData)
        
        dispatch_async(dispatch_get_main_queue(), { () -> Void in
          let cellToUpdate = tableView.cellForRowAtIndexPath(indexPath)
          cellToUpdate?.imageView.image = imageAlbum
          cellToUpdate?.setNeedsLayout() // Refresque la celda
        })
        
      }
      
    }
    
    
    
    return cell
  }
  
  
  //MARK: - Metodos del UITableViewDelegate
  func test3() {
  }
  
  //MARK: - Busqueda
  
  func perfomSearch(term: String) {
    
    // metodo para esconder el teclado
    self.searchTextField.resignFirstResponder()
    
    
    self.songs = [Song]()
    
    let parseTerm = term.stringByAddingPercentEscapesUsingEncoding(NSUTF8StringEncoding)
    
    let url = "https://itunes.apple.com/search?term=\(parseTerm!)&entity=song&limit=5"
    
    let iTunesUrl = NSURL(string: url)

    
    let urlRequest = NSURLRequest(URL: iTunesUrl!)
    
    let jsonResult = urlSession.dataTaskWithRequest(urlRequest, completionHandler: { (data, response, error) -> Void in
      
      if error != nil {
        println("Error : \(error.localizedDescription)")
      }
      //      println("Response : \(response.description)")
      
      //      println("Data : \(data)")
      
      var err : NSError?
      
      var jsonDic = NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions.MutableContainers, error: &err) as NSDictionary
      
      let resultArray = jsonDic["results"] as NSArray
      
      for songDic in resultArray {
        //        println("diccionario \(songDic)")
        
        let artistName = songDic["artistName"] as String
        let trackName = songDic["trackName"] as String
        let collectionName = songDic["collectionName"] as String
        let albumImageUrl = NSURL(string: songDic["artworkUrl100"] as String)
        let price = songDic["trackPrice"] as Double
        
        let song = Song(artistName: artistName, trackName: trackName, collectionName: collectionName, albumImageUrl: albumImageUrl!, price: price)
        
        self.songs.append(song)
        
        println("la cancion : \(song.trackName) es del artista : \(song.artistName)")
      }
      
      // Sin volver al hilo Principal
      //      self.songsTable.reloadData()
      
      // Volviendo al hilo Principal
      dispatch_async(dispatch_get_main_queue(), { () -> Void in
        self.songsTable.reloadData()
      })
      
      //      println("JSON : \(json)")
    })
    jsonResult.resume()

  }
  
  //MARK: - Realizar Busqueda
  
  @IBAction func searchTapped(sender: AnyObject) {
    
    let valor = self.searchTextField.text
    
    println("el valor introducido es : \(valor)")
    
    perfomSearch(valor)
    
  }
  
  
  
}
