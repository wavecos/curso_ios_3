// Playground - Propiedades Calculadas

import UIKit


class Person {
  
  // STORED Properties
  var firstName : String
  var lastName : String
  
  // COMPUTED Properties
  var fullName : String {
    get {
      return firstName + " " + lastName
    }
//    set {
//      
//    }
  }
  
  
  init(first : String, last : String) {
    self.firstName = first
    self.lastName = last
  }
  
}


var juan = Person(first: "Juan", last: "Perales")
juan.fullName

