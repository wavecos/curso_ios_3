// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var cantidadItems = 67
var apellido = "Bernoulli"
var estaHabilitado = true

apellido = "Newton"

var diasSemana : Int
diasSemana = 12

var primerDiaSemana : String

primerDiaSemana = "Domingo es descanzador"

var salario : Double = 1200.76

// Dia 02

let diasInMes = [31,28,31,30,31,30,31,31,30,31,30,31]

var opcionesColor = ["Rojo", "Azul", "Verde"]

var sabores : [String]

sabores = ["Vainilla", "Chocolate", "Mora"]

println("El segundo sabor es \(sabores[1])")

sabores[0] = "Limón"

sabores

// Adicionando al final del Array
sabores.append("Papaya")

sabores

sabores += ["Tamarindo"]

sabores

// Insertamos en una posicion específica

sabores.insert("Coco", atIndex: 3)

sabores

// Removiendo Elementos

sabores.removeLast()
sabores.removeAtIndex(3)

// .count para saber el número de items en un array

println("El array tiene \(sabores.count) items")

if diasInMes.isEmpty {
  println("El array esta vacío")
}

for mes in diasInMes {
  println(mes)
}

// Dictionaries

// Declaracion Literal

var ciudades = ["CBA" : "Cochabamba", "LPZ" : "La Paz", "SCZ" : "Santa Cruz", "TAR" : "Tarija"]

// Declaracion de un diccionario de llaves Enteras y Valores del tipo String

var products : [Int:String]

// Accediendo valores de un Diccionario
println(ciudades["LPZ"])

// Actualizando o Insertando

ciudades["POT"] = "Potosi"

// Update
ciudades["SCZ"] = "Tierra del Oriente"
ciudades
// otra forma
ciudades.updateValue("Llajta", forKey: "CBA")
ciudades

// Para remover un key/value
ciudades["LPZ"] = nil
ciudades
// o
ciudades.removeValueForKey("SCZ")
ciudades

println("Existen \(ciudades.count) ciudades registradas")

// Iterar
// key,value son nombres temporales podemos usar : abrev, nombreCiudad
for (key, value) in ciudades {
  println("\(key) es la abreviación para : \(value)")
}

(1,2,3)
("Rojo", "Verde", "Azul")
(1, "Misil", true, 6.98762)

// Tuplas

var text = "Hola"
let num = 1200

var miTupla = (text, num)
var miTupla2 = (12, "Adios", num, text)

var capitales = ["CBA" : "Cochabamba", "LPZ" : "La Paz", "SCZ" : "Santa Cruz", "TAR" : "Tarija"]

for (abrev, capital) in ciudades {
  println("\(abrev) es la abreviación para : \(capital)")
}

// Funcion Standar, retornando un String
func obtenerCancion() -> String {
  return "Helter Skelter"
}

// Funcion que retorna una Tupla
func obtenerCancionYDuracion() -> (String, Int) {
  return ("Pato Patito", 327)
}

// Llamando a la funcion
let result = obtenerCancionYDuracion()

// Descoponiendo - opcion 1
println("La cancion es \(result.0) y dura \(result.1) segundos")

// Otra forma modificando la funcion
//func obtenerCancionYDuracion() -> (name:String, duracion:Int) {
//  return ("Pato Patito", 327)
//}

//println("La cancion es \(result.name) y dura \(result.duracion) segundos")

// Descoponiendo - opcion 2
let (cancion, duracion) = obtenerCancionYDuracion()
println("La cancion es \(cancion) y dura \(duracion) segundos")

// Enumeraciones

enum PreferenciaAsiento {
  case Ventana
  case Medio
  case Pasillo
  case NoPreferencia
}

var preferenciaEisten : PreferenciaAsiento
preferenciaEisten = PreferenciaAsiento.Pasillo

var preferenciaLenon = PreferenciaAsiento.Ventana

// usando switch
switch preferenciaLenon {
case .Ventana :
    println("Reserva para Ventana")
case .Medio:
    println("Reserva para Medio")
case .Pasillo:
    println("Reserva para Pasillo")
case .NoPreferencia:
    println("Sorprendeme")
}









