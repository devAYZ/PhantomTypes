//: [Previous](@previous)

import Foundation

protocol Currency: Equatable {
    var code: String { get }
}

struct Money<P: Currency>: Equatable {
    var amount: Double = 0
}

struct PoundsSterling: Currency {
    var code: String { "GBP" }
    
    var amount = Money<Self>()
}

struct Euro: Currency {
    var code: String { "EUR" }
    
    var amount = Money<Self>()
}

struct Dollar: Currency {
    var code: String { "USD" }
    
    var amount = Money<Self>()
}

class City {
    
    var dollarEarning = Dollar(amount: .init(amount: 1000))
    var poundEarning = PoundsSterling(amount: .init(amount: 1000))
    
    func compareEarnings() {
        print(dollarEarning == poundEarning)
        print(dollarEarning.amount == poundEarning.amount)
    }
}

var city = City()
city.compareEarnings()

//: [Next](@next)
