import UIKit

//creating classes

class Dog {
    var name: String
    var breed: String

    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
}
let poppy = Dog(name: "Poppy", breed: "Poodle")

/*
 Creating classes is pretty much identical to structures
 */

//inheritance

class Poodle: Dog {
    init(name: String) {
        super.init(name: name, breed: "Poodle")
    }
}

/*
 You can make subclasses from parent classes that inherit all the parents properties
 */



class Dog2 {
    func makeNoise() {
        print("Woof!")
    }
}

class Poodle2: Dog2 {
    override func makeNoise() {
        print("Yip!")
    }
}

let poppy3 = Poodle2()
poppy3.makeNoise()

/*
 Method overriding allows you to create your own functions instead of using the parents class methods
 */

//Final classes

final class Dog4 {
    var name: String
    var breed: String

    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
}

/*
 If you dont want any classes to inherit the parent class, you use the "final" keyword
 */



/*
 IMPORTANT POINT
 
 Structures: copying a structure creates a new instance of it, IE editing the second instance doesnt affect the first one
 
 Classes: copying a class creates a instance that POINTS TO THE SAME class as the starting one
  ie editing the second instance AFFECTS the first one
 */

//Deinitializers

class Person {
    var name = "John Doe"

    init() {
        print("\(name) is alive!")
    }

    func printGreeting() {
        print("Hello, I'm \(name)")
    }
    
    deinit {
        print("\(name) is no more!")
    }
}

for _ in 1...3 {
    let person = Person()
    person.printGreeting()
}

//Person.deinit

/*
 the difference between classes and structs is that classes can have deinitializers – code that gets run when an instance of a class is destroyed.
 */


class Singer {
    var name = "Taylor Swift"
}

let taylor = Singer()
taylor.name = "Ed Sheeran"
print(taylor.name)


/*
  if you have a constant class with a variable property, that property can be changed. Because of this, classes don’t need the mutating keyword with methods that change properties; that’s only needed with structs.
 */
