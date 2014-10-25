// Playground - Lazy Properties

import UIKit

func getDailyBonus() -> Int {
  println("Performing complicated task....")
  return random()
}

class Player {
  
  // properties
  private var name : String = "John Doe" {
    willSet {
      println("Se cambiara el nombre a : \(newValue)")
    }
    didSet {
      println("El Valor anterior era : \(oldValue)")
    }
  }
  
  
  var score = 0
  lazy var bonus = getDailyBonus()
  
  // methods
  func description() -> String {
    return("Player \(name) has a score of \(score)")
  }
}

var newPlayer = Player()
var newPlayer2 = Player()
var newPlayer3 = Player()


println(newPlayer3.bonus)

var robert = Player()

robert.name = "Dragon"

robert.description()




