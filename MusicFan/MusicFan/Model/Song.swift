//
//  Song.swift
//  MusicFan
//
//  Created by onix on 11/15/14.
//  Copyright (c) 2014 tekhne. All rights reserved.
//

import Foundation

class Song {
  
  let artistName : String?
  let trackName : String?
  let collectionName : String?
  let albumImageUrl : NSURL?
  let price : Double?
  
  init( artistName : String,
    trackName : String,
    collectionName : String,
    albumImageUrl : NSURL,
    price : Double
    ) {
      
      self.artistName = artistName
      self.trackName = trackName
      self.collectionName = collectionName
      self.albumImageUrl = albumImageUrl
      self.price = price
      
  }
  
}

