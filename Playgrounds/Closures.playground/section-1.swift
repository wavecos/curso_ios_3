// Playground - Closures

import UIKit

// Definicion de Closure

let miClosure = {
  println("Esto es un Closure")
}

func ejecutarCincoVeces( closure : ()->() ) {
  for i in 1...5 {
    closure()
  }
}

ejecutarCincoVeces(miClosure)

// Pasando directamente un closure a la funcion que hemos definido

ejecutarCincoVeces({ ()->() in
  println("La suma de 1 + 2 es \(1+2)")
})

func saludoTresVeces( miClosure : () -> String ) {
  for i in 1...3 {
    println("Te mando un saludo \(miClosure)")
  }
}

saludoTresVeces ({ () -> String in
  return "Newton"
})

