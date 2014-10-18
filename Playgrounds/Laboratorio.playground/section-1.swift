// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

// Problema 1

/*
Problema 1 - “stringTimes”


stringTimes("Hi", 3) -> "HiHiHi"
stringTimes("Hi", 1) -> "Hi"
*/

func stringTimes(cadena : String = "Hi", nroVeces : Int = 1) -> String {
  var resultado = ""
  for indice in 1...nroVeces {
    resultado = resultado + cadena
  }
  return resultado
}

stringTimes(cadena: "Bu", nroVeces: 3)
stringTimes(nroVeces: 4)

/*
    Problema 2 - “diff21”
    diff21(10) -> 11 
    diff21(21) -> 0
*/

func diff21(n : Int) -> (Int) {
  
  var diff = abs(21 - n)
  
  if n < 21 {
    return diff
  } else {
    return diff * 2
  }
}

println("Resultado de diff21(19) -> \(diff21(19))")
println("Resultado de diff21(10) -> \(diff21(10))")
println("Resultado de diff21(21) -> \(diff21(21))")
println("Resultado de diff21(25) -> \(diff21(25))")

/*
Problema 3 - “lastDigit”


lastDigit(6, 17) -> false 
lastDigit(3, 113) -> true
*/

func lastDigit(x : Int, y : Int) -> (Bool) {
  return (x % 10 == y % 10)
}

println("lastDigit(7,17) -> \(lastDigit(7,17))")
println("lastDigit(6,17) -> \(lastDigit(6,17))")
println("lastDigit(3,113) -> \(lastDigit(3,113))")
println("lastDigit(1973,2013) -> \(lastDigit(1973,2013))")



    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    