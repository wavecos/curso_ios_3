// Playground - Enumeraciones

import UIKit

enum PreferenciaAsiento {
  case Ventana
  case Medio
  case Pasillo
  case NoPreferencia
}


var preferenciaEisten : PreferenciaAsiento
preferenciaEisten = PreferenciaAsiento.Ventana

var preferenciaLennon = PreferenciaAsiento.Pasillo


switch preferenciaLennon {
case .Ventana :
  println("Reserva para Ventana realizada.")
case .Medio :
  println("Reserva para Medio realizada.")
case .Pasillo :
  println("Reserva para Pasillo realizada.")
case .NoPreferencia :
  println("No hizo reserva")
}


// No recomendado
var preferenciaAna = "Pasillo"

if preferenciaAna == "pasillo" {
  println("Reserva para Ventana realizada.")
}
//

func reservarAsiento(nombre :String, preferencia : PreferenciaAsiento ) -> (String, Double) {
  
  var mensaje : String
  var precio : Double
  
  switch preferencia {
  case .Ventana :
    mensaje = "Reserva para Ventana realizada por \(nombre)."
    precio = 567.3
  case .Medio :
    mensaje = "Reserva para Medio realizada por \(nombre)."
    precio = 453.2
  case .Pasillo :
    mensaje = "Reserva para Pasillo realizada por \(nombre)."
    precio = 987.2
  case .NoPreferencia :
    mensaje = "\(nombre) No hizo reserva"
    precio = 0
  }
  
  return (mensaje, precio)
}

reservarAsiento("Juan", PreferenciaAsiento.Medio)
reservarAsiento("Pedro", PreferenciaAsiento.Ventana)
reservarAsiento("Ana", PreferenciaAsiento.Pasillo)
reservarAsiento("Maria", PreferenciaAsiento.NoPreferencia)


rand()%3 + 1
rand()%3 + 1
rand()%3 + 1
rand()%3 + 1
rand()%3 + 1
rand()%3 + 1
rand()%3 + 1
rand()%3 + 1
rand()%3 + 1













