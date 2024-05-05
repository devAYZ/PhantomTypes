# Phantom Type

## Definition
- Phantom Types are a type system feature in Swift, but they’re not actual types
- Instead, they’re used to enforce constraints at compile-time
- The basic definition of a phantom type is this: a type that doesn’t use at least one of its generic type parameters

## Understanding the Phantom
- Names/Typealiases (structural) are inneficient
- Struct wrappers (nominal) prevent mixing up inputs
- Enums prevents invalid states at construction
- Phantom types prevent invalid combinations in operations


## Links
- Shashank Thakur writeup [Here](https://levelup.gitconnected.com/phantom-types-in-swift-c6e6374386bf)
- PAUL HUDSON [Here](https://www.hackingwithswift.com/plus/advanced-swift/how-to-use-phantom-types-in-swift)
