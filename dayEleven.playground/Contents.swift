import UIKit

//Protocols
protocol Identifiable {
    var id: String { get set }
}

struct User: Identifiable {
    var id: String
}

func displayID(thing: Identifiable) {
    print("My ID is \(thing.id)")
}

/*
 Protocols are a sort of property you can add to your structures (and classes?) that ensures your structure also adheres to other properties (if your protocol)
 */

//Protocol inheritance
protocol Payable {
    func calculateWages() -> Int
}

protocol NeedsTraining {
    func study()
}

protocol HasVacation {
    func takeVacation(days: Int)
}

protocol Employee: Payable, NeedsTraining, HasVacation { }

/*
 You can make a protocol that inherites other protocols
 */

//Extensions

extension Int {
    func squared() -> Int {
        return self * self
    }
}
let number = 8
number.squared()

/*
 Extensions allow you to add methods to existing types, to make them do things they weren’t originally designed to do
 
 You cannot store values in extensions
 */



//Protocol extensions

let pythons = ["Eric", "Graham", "John", "Michael", "Terry", "Terry"]
let beatles = Set(["John", "Paul", "George", "Ringo"])

extension Collection {
    func summarize() {
        print("There are \(count) of us:")

        for name in self {
            print(name)
        }
    }
}
pythons.summarize()
beatles.summarize()

/*
 Protocol extensions solve both those problems: they are like regular extensions, except rather than extending a specific type like Int you extend a whole protocol so that all conforming types get your changes.
 */


protocol Identifiable3 {
    var id: String { get set }
    func identify()
}

extension Identifiable3 {
    func identify() {
        print("My ID is \(id).")
    }
}

struct User2: Identifiable3 {
    var id: String
}

let twostraws = User2(id: "twostraws")
twostraws.identify()

/*
 Protocol extensions can provide default implementations for our own protocol methods
 */
