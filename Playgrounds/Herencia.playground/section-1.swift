// Playground - Herencia en Swift

import UIKit

class Player {
  
  // Propiedades o Atributos
  var name : String
  var score : Int
  
  // Métodos o Comportamiento
  func description() -> String {
    return "Player \(name) has a Score of \(score)"
  }
  
  // Inicializadores
  init() {
    name = "Alfredo"
    score = 0
  }
  
  // Inicializador con 1 parámetro
  init(name : String) {
    self.name = name
    self.score = 0
  }
  
  // Inicializadores con mas 1 argumento
  init(name : String, score : Int) {
    self.name = name
    self.score = score
  }
  
}

class PremierPlayer: Player {
  
  // Propiedades
  var memberLevel : String
  
  // Sobreescribimos el init() de la superclase

  override init() {
    memberLevel = "Gold"
    super.init()
  }
  
  override func description() -> String {
    let originalMessage = super.description()
    return "\(originalMessage) and is \(memberLevel)"
  }
  
  // Métodos
  func calculateBonus() {
    self.score += 1000 // self.score = self.score + 1000
    println("New Score is \(self.score)")
  }
}

//var playerVIP = PremierPlayer(name:"sx", score:3)
//playerVIP.description()
//playerVIP.calculateBonus()
//playerVIP.description()

var playerVIP2 = PremierPlayer()
playerVIP2.description()

var playerNormal = Player(name: "Juan", score: 21)
playerNormal.description()










