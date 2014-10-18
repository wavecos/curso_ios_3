// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

func imprimirSaludo() {
  println("hola a todos")
}

imprimirSaludo()

func verificarHabilitacion(nombre : String, edad : Int) {
  if (edad > 18) {
    println("Hola \(nombre) tu puedes ir a votar en las elecciones")
  } else {
    println("hola \(nombre), eres menor de edad para estas elecciones")
  }
}

verificarHabilitacion("Juanelo", 32)
verificarHabilitacion("Godines", 12)


func notaFinal(nota1 : Int, nota2: Int, nota3: Int) -> Double {
  let final = Double(nota1 + nota2 + nota3) / 3
  return final
}

var notaJuan = notaFinal(34, 56, 98)
var notaPedro = notaFinal(54, 78, 81)

println("La nota de Ana es \(notaFinal(12,54,82)) ")


func destruirPais(pais : String = "Thailandia") {
  println("Lanzando misiles nucleares a \(pais)")
}

//destruirPais(pais: "Siria")
destruirPais()






