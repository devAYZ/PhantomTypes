//: [Previous](@previous)

import Foundation

protocol Currency: Equatable {
    var code: String { get }
    var amount: CurrencyValue<Self> { get set }
}

struct CurrencyValue<P: Currency>: Equatable, ExpressibleByFloatLiteral {
    var value: Double = 0
    
    init(floatLiteral value: FloatLiteralType) {
        self.value = value
    }
}

struct PoundsSterling: Currency {
    var code: String { "GBP" }
    
    var amount: CurrencyValue<Self>
}

struct Euro: Currency {
    var code: String { "EUR" }
    
    var amount: CurrencyValue<Self>
}

struct Dollar: Currency {
    var code: String { "USD" }
    
    var amount: CurrencyValue<Self>
}

class City {
    
    var dollarEarning = Dollar(amount: 1000.0)
    var poundEarning = PoundsSterling(amount: 1000.0)
    
    func compareEarnings() {
        print(dollarEarning == dollarEarning)
        print(dollarEarning.amount.value, poundEarning.amount)
        print(dollarEarning.amount == dollarEarning.amount)
    }
}

var city = City()
city.compareEarnings()

//: [Next](@next)
