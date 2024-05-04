//: [Previous](@previous)

import Foundation

struct Employee<Role>: Equatable {
    var name: String
}

enum Sales { }
enum Programmer { }

let mark = Employee<Programmer>(name: "Zoe")

let bill = Employee<Sales>(name: "Zoe")

let elon = Employee<String>(name: "Zoe")

print(mark == elon)
//: [Next](@next)
