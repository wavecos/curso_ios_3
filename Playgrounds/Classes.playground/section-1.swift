// Playground - Clases en Swift

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

// Instanciando una Clase en Swift

var jhonn = Player() // init() es llamado automatixamente

jhonn.name = "Jhon Lennon"
jhonn.score = 435

jhonn.name.uppercaseString
println(jhonn.description())

var mick = Player(name: "Mick Jagger")
println(mick.description())

var ana = Player(name: "Ana", score: 322)
println(ana.description())

var fecha = NSDate()

var cadena : String = "hola"

