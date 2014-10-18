// Playground - Arrays

import UIKit

// Declaracion de un Arrays usando Literals
let diasEnMes = [31,28,31,30,31,30,31,31,30,31,30,31]

var opcionesColor = ["Negro", "Azul", "Verde"]

var sabores : [String]

sabores = ["Vainilla", "Chocolate", "Mora"]

println("El segundo sabor es \(sabores[1])")

sabores[0] = "Limon"
sabores

// Adicionando un Item al array
sabores.append("Durazno")
sabores

// Otra forma de adicionar un Item

sabores += ["Tamarindo"]
sabores

// Insertar un Item en una posicion especifica
sabores.insert("Papaya", atIndex: 1)
sabores

// Removiendo Elementos de un Array
let saborEliminado = sabores.removeAtIndex(3)
sabores

sabores.removeLast()
sabores

// Para saber el numero de elementos de un Array

println("Tenemos actualmente \(sabores.count) sabores")

if diasEnMes.isEmpty {
  println("El array esta vacio")
} else {
  println("Tenemos \(diasEnMes.count) meses en el año")
}

// iterar un Array

for mes in diasEnMes {
  println(mes)
}













