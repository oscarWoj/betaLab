import UIKit

//Structures

struct Sport {
    var name: String
}

var tennis = Sport(name: "Soccer")

tennis.name = "Lawn tennis"
/*
 Swift structs are similair to classes
 */


//Computed properties

struct Sport2 {
    var name: String
    var isOlympicSport: Bool

    var olympicStatus: String {
        if isOlympicSport {
            return "\(name) is an Olympic sport"
        } else {
            return "\(name) is not an Olympic sport"
        }
    }
}

let chessBoxing = Sport2(name: "Chessboxing", isOlympicSport: false)
print(chessBoxing.olympicStatus)

/*
 you can initialize variables inside structures without explicily giving them a value
 */

//Methods
struct City {
    var population: Int

    func collectTaxes() -> Int {
        return population * 1000
    }
}
let london = City(population: 9_000_000)
london.collectTaxes()



/*
 Functions inside structures are called methods and they carry out actions to do with the original structure
 */


//Mutating Methods

struct Person {
    var name: String

    mutating func makeAnonymous() {
        name = "Anonymous"
    }
}
var person = Person(name: "Ed")
person.makeAnonymous()

/*
 Methods that change the values of their own functions are called mutating functions and need to be included in the code
 */
