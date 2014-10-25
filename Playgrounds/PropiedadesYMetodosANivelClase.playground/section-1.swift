// Playground - Propiedaes y Metodos a nivel de Clase

import UIKit

class BankAccount {
  
  // stored properties
  let accountNumber : Int
  let routingCode = 12345678
  var balance : Double
  class var interestRate : Float {
    return 2.0
  }
  
  init(num : Int, initialBalance : Double) {
    self.accountNumber = num
    self.balance = initialBalance
  }
  
  func deposit(amount : Double) {
    balance += amount
  }
  func withdraw(amount : Double) -> Bool {
    if balance > amount {
      balance -= amount
      return true
    } else {
      println("Insufficient funds")
      return false
    }
  }
  
  class func example() {
    println("La tasa de interes es ... \(interestRate)")
  }
  
  
  
  // etc..
}

var cuenta1 = BankAccount(num: 42426262, initialBalance: 2700)
var cuenta2 = BankAccount(num: 12221211, initialBalance: 100)

cuenta1.deposit(1000)
cuenta1.balance
BankAccount.interestRate
BankAccount.example()

cuenta2.withdraw(10)
cuenta2.balance

var appleUrl = NSURL.URLWithString("http://wwww.apple.com:4523/ipad/index.html")

appleUrl.lastPathComponent
appleUrl.host
appleUrl.scheme
appleUrl.port








