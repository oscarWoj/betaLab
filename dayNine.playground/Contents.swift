import UIKit

//Initializers

struct User {
    var username: String

    init() {
        username = "Anonymous"
        print("Creating a new user!")
    }
}

var user = User()
user.username = "twostraws"

/*
 You can create your own initializers as long as your init function satisfies all the properties of your structure
 
 */

//Self
struct Person {
    var name: String

    init(name: String) {
        print("\(name) was born!")
        self.name = name
    }
}

/*
 You can use self. to refer to the currrent structure
 */


//Lazy properties

struct FamilyTree {
    init() {
        print("Creating family tree!")
    }
}

struct Person2 {
    var name: String
    var familyTree = FamilyTree()

    init(name: String) {
        self.name = name
    }
}

var ed = Person2(name: "Ed")

//lazy var familyTree = FamilyTree()

ed.familyTree = .init()

/*
 for optimization purposes you can add lazy to ensure you only create an instance if it's accessed
 */


//Static properties and methods

struct Student {
    static var classSize = 0
    var name: String

    init(name: String) {
        self.name = name
        Student.classSize += 1
    }
}

print(Student.classSize)

/*
 Declaring a variable as static allows you to use that property through any instance of the class. It can be accessed trhough the struct itself
 */

//Access control

struct Person3 {
    private var id: String

    init(id: String) {
        self.id = id
    }

    func identify() -> String {
        return "My social security number is \(id)"
    }
}

/*
 To make a property private to other people, you need to use the private method. Which stops it from being read unless they are accessed through other methods
 */
