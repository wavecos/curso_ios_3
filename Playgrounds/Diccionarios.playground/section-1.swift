// Playground - Diccionarios

import UIKit

// Declaracion Literal

var ciudades = ["CBA" : "Cochabamba", "LPZ" : "La Paz", "SCZ" : "Santa Cruz", "BEN" : "Beni", "ORU" : "Oruro", "POT" : "Potosí", "TAR" : "Tarija"]

// Declaracion Formal
var productos : [Int:String]

productos = [123 : "Computadora", 322 : "Lapiz"]

// Accediendo a valores de un diccionario
println(ciudades["CBA"])
ciudades["LPZ"]

// Actualizar o Insertar Elementos de un diccionario

ciudades["PAN"] = "Pando"
ciudades

ciudades["SCZ"] = "Tierra del Oriente"
ciudades

// Otra forma de actualizar

ciudades.updateValue("Llajta", forKey: "CBA")
ciudades

// Remover elemtos de un diccionario

ciudades["SCZ"] = nil
ciudades

let ciudadRemovida = ciudades.removeValueForKey("LPZ")
ciudadRemovida
ciudades

println("Numero de ciudades registradas = \(ciudades.count)")

// Iterar un Diccionario

for (codigo, ciudad) in ciudades {
  println("el codigo para la ciudad \(ciudad) es : \(codigo)")
}

for codigo in ciudades.keys {
  println(codigo)
}

for ciudad in ciudades.values {
  println(ciudad)
}





















