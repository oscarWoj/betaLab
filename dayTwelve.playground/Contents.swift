import UIKit

//Optionals

var age: Int? = nil
var sameThing: Int?
age = 38

/*
 You can use optionals to later declare a value, it will return nil if it doesnt have a value
 */

//Unwrapping optionals

var name: String? = nil

if let unwrapped = name {
    print("\(unwrapped.count) letters")
} else {
    print("Missing name.")
}
/*
 By using an if let function, you can unwrap it into a variable to see if there is anything inside it
 */

//UNWRAPPING WITH guard

func greet(_ name: String?) {
    guard let unwrapped = name else {
        print("You didn't provide a name!")
        return
    }

    print("Hello, \(unwrapped)!")
}

/*
 Using guard let is the same as if let except it unwrappes in diffrent parts of the code, if is at the end sometimes, but guard lets you execute it right away
 */


//Force unwrapping
let str:String? = "5"
//let num = Int(str)

let num = Int(str!)!

/*
 Force unwrapping forces the optional into a variable, if it is the right type, nothing crashes, but if its the wrong type the progam crashes becasue it expected (TRUSTED) you to input the right variable
 */

//Implicitly unwrapped optionals

let age2: Int! = nil

/*
 This lets you use it as if its already been unwrapped, but is not good practice, because it defeats the purpose of optionals
 */

//nil coalescing


func username(for id: Int) -> String? {
    if id == 1 {
        return "Taylor Swift"
    } else {
        return nil
    }
}

let user = username(for: 15) ?? "Anonymous"

/*
 This lets you have a default value to fall back on incase the result of your function returns nil
 */


let names = ["John", "Paul", "George", "Ringo"]
let beatle = names.first?.uppercased()

/*
 That question mark is optional chaining – if first returns nil then Swift won’t try to uppercase it, and will set beatle to nil immediately.
 */


//Optional TRY

enum PasswordError: Error {
    case obvious
}

func checkPassword(_ password: String) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvious
    }

    return true
}

do {
    try checkPassword("password")
    print("That password is good!")
} catch {
    print("You can't use that password.")
}

if let result = try? checkPassword("password") {
    print("Result was \(result)")
} else {
    print("D'oh.")
}

try! checkPassword("sekrit")
print("OK!")    //Only use this if you are sure it wont crash

/*
 optional try will let you try to input the value into an optional. if it goes through then the variable now exists, if it does not then a nil value gets thrown
 */


//Failable initializers

struct Person {
    var id: String

    init?(id: String) {
        if id.count == 9 {
            self.id = id
        } else {
            return nil
        }
    }
}

/*
 its an initializer that might work or might not, for example if its initialized with anything other than a 9 letter string, it returns nil and ISNT initialized
 */

//Typecasting
class Animal { }
class Fish: Animal { }

class Dog: Animal {
    func makeNoise() {
        print("Woof!")
    }
}
let pets = [Fish(), Dog(), Fish(), Dog()]

for pet in pets {
    if let dog = pet as? Dog {
        dog.makeNoise()
    }
}

/*
 You can optional typecast in swift, and if it succesfuly casts the typem the code continues, otherwise it returns nil and doesnt run the code
 */
