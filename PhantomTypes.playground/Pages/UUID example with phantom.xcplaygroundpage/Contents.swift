//: [Previous](@previous)

import Foundation

struct ID<PT>: Equatable {
    var id = UUID()
}

struct Country {
    var id = ID<Self>()
}

struct States {
    var id = ID<Self>()
}

class LagosState {
    
    func getStates(list: [States]) -> States? {
        let country = Country()
        let state = States()
        return list.filter { $0.id == state.id }.first
    }
}

//: [Next](@next)
