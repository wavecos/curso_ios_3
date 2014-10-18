// Playground - Opcionales

import UIKit

var temperatura : Int?

temperatura = 21

if temperatura != nil {
  println("La temperatura ambiente es \(temperatura!) grados celcius")
} else {
  println("Hay un error en la obtencion de la temperatura")
}

var aeropuertos = ["ALT" : "Aeropuerto El Alto", "WLR" : "Aeropuerto Jorge Wilsterman", "JFK" : "Aeropuerto Jhon F. Kennedy"]


var resultado = aeropuertos["JFH"]

if resultado != nil {
  println("El aeropuerto mas cercano es \(resultado!)")
}

// O Mejor asigando y comprobando directamente en el IF
if let resultado = aeropuertos["JFK"] {
  println("El aeropuerto mas cercano es \(resultado)")
}




