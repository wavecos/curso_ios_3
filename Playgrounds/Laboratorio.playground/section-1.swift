// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

// Problema 1

/*
Problema 1 - “stringTimes”Fuente: http://codingbat.com/prob/p142270
“Given a string and a non-negative int n, return a larger stringthat is n copies of the original string.”
“Dada una cadena y un entero n no negativo, devolver una cadenalarga que copie n-veces la cadena original”stringTimes("Hi", 2) -> "HiHi"
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
    Problema 2 - “diff21”    Fuente: http://codingbat.com/prob/p116624    “Given an int n, return the absolute difference between n and    21, except return double the absolute difference if n is over    21. “    “Dado un entero n, devolver la diferencia absoluta entre n y 21,    excepto retornar la diferencia absoluta doble si n es mayor a    21”    diff21(19) -> 2 
    diff21(10) -> 11 
    diff21(21) -> 0    Hint: Revisar la documentación de la función: abs
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
Problema 3 - “lastDigit”Fuente: http://codingbat.com/prob/p125339“Given two non-negative int values, return true if they have thesame last digit, such as with 27 and 57. Note that the % "mod"operator computes remainders, so 17 % 10 is 7.”
“Dados dos valores enteros no-negativos, devolver true si tienenel mismo último dígito, tal como 27 y 57. Nota que el operador %“mod” calcula los residuos, asi que 17 % 10 es 7”
lastDigit(7, 17) -> true 
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



    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
