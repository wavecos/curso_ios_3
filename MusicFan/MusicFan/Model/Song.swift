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
  let previewUrl : NSURL?
  
  init( artistName : String,
    trackName : String,
    collectionName : String,
    albumImageUrl : NSURL,
    price : Double,
    previewUrl : NSURL
    ) {
      
      self.artistName = artistName
      self.trackName = trackName
      self.collectionName = collectionName
      self.albumImageUrl = albumImageUrl
      self.price = price
      self.previewUrl = previewUrl
      
  }
  
}

