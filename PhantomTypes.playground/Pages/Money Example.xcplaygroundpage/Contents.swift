//: [Previous](@previous)

import Foundation

protocol Currency {
    var code: String { get }
}

enum PoundsSterling: Currency {
    var code: String {
        "GBP"
    }
}

enum Euro: Currency {
    var code: String {
        "EUR"
    }
}

enum Dollar: Currency {
    var code: String {
        "USD"
    }
}

struct Money<P: Currency>: Equatable {
    let amount: Double
}

class City {
    
    var dollarEarning = Money<Dollar>(amount: 1000)
    var poundEarning = Money<PoundsSterling>(amount: 1000)
    
    func compareEarnings() {
        print(dollarEarning.amount == poundEarning.amount)
    }
}

var city = City()
var poundEarning = Money<PoundsSterling>(amount: 1000)
city.compareEarnings()

//: [Next](@next)
