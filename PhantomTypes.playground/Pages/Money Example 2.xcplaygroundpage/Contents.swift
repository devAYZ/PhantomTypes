//: [Previous](@previous)

import Foundation

protocol Currency: Equatable {
    var code: String { get }
    var amount: CurrencyValue<Self> { get set }
}

struct CurrencyValue<P: Currency>: Equatable {
    var amount: Double = 0
}

struct PoundsSterling: Currency {
    var code: String { "GBP" }
    
    var amount = CurrencyValue<Self>()
}

struct Euro: Currency {
    var code: String { "EUR" }
    
    var amount = CurrencyValue<Self>()
}

struct Dollar: Currency {
    var code: String { "USD" }
    
    var amount = CurrencyValue<Self>()
}

class City {
    
    var dollarEarning = Dollar(amount: .init(amount: 1000))
    var poundEarning = PoundsSterling(amount: .init(amount: 1000))
    
    func compareEarnings() {
        print(dollarEarning == dollarEarning)
        print(dollarEarning.amount == dollarEarning.amount)
    }
}

var city = City()
city.compareEarnings()

//: [Next](@next)
