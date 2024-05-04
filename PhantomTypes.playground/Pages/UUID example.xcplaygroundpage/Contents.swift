//: [Previous](@previous)

import Foundation



struct Country {
    var id = UUID()
}

struct States {
    var id = UUID()
}

class Continent {
    
    func getStates(list: [States]) -> States? {
        let country = Country()
        return list.filter { $0.id == country.id }.first
    }
}



//: [Next](@next)
