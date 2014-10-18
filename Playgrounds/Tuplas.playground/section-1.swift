// Playground - Tuplas

import UIKit

var text = "Hola"
var num = 1987

var miTupla = (text, num)
var miTupla2 = (34.9, "Adios", false)
var miTupla3 = (123, text, true, num)

var partidos = ["UD" : "Unidad Democrata", "PDC" : "Partido Democrata Cristiano", "MAS" : "Mov al Socialismo"]

for (sigla, nombre) in partidos {
  println("Partido : \(nombre) con sigla : \(sigla)")
}

// Funciones Estandar
func obtenerCancion() -> String {
  return "Helter Skelter"
}

func obtenerCancionYDuracion() -> (cancion : String, duracion : Int) {
  // ...
  // ...
  
  return ("Patito Patito", 321)
}

let result = obtenerCancionYDuracion()

// Descomponiendo la Tupla - opcion 1 y 2
println("La cancion es \(result.0) y su duracion \(result.1) seg")

println("La cancion es \(result.cancion) y su duracion \(result.duracion) seg")

// Opcion 3

var (nombreCancion, duracionSeg) = obtenerCancionYDuracion()

println("Nombre de la cancion \(nombreCancion)")
println("Duracion \(duracionSeg) segundos")














