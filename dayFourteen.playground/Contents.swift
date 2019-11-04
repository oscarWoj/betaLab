import UIKit
import PlaygroundSupport


//Functions

func favoriteAlbum() {
    print("My favorite is Fearless")
}

favoriteAlbum()

func favoriteAlbum(name: String) {
    print("My favorite is \(name)")
}

favoriteAlbum(name: "Fearless")

func printAlbumRelease(name: String, year: Int) {
    print("\(name) was released in \(year)")
}

printAlbumRelease(name: "Fearless", year: 2008)
printAlbumRelease(name: "Speak Now", year: 2010)
printAlbumRelease(name: "Red", year: 2012)

//return values
func albumIsTaylor(name: String) -> Bool {
    if name == "Taylor Swift" { return true }
    if name == "Fearless" { return true }
    if name == "Speak Now" { return true }
    if name == "Red" { return true }
    if name == "1989" { return true }

    return false
}

if albumIsTaylor(name: "Red") {
    print("That's one of hers!")
} else {
    print("Who made that?!")
}

if albumIsTaylor(name: "Blue") {
    print("That's one of hers!")
} else {
    print("Who made that?!")
}

/*
 Functions in swift are the same as functions in python,
 Keyword to define a function is "func myFunctionName()"
 
 Functions can take parameters
 
 Functions can have return values
 */


//Optionals

func getHaterStatus(weather: String) -> String? {
    if weather == "sunny" {
        return nil
    } else {
        return "Hate"
    }
}

var status: String?
status = getHaterStatus(weather: "rainy")

if let unwrappedStatus = status {
    // unwrappedStatus contains a non-optional value!
    print(unwrappedStatus)
} else {
    // in case you want an else block, here you go…
}


func yearAlbumReleased(name: String) -> Int? {
    if name == "Taylor Swift" { return 2006 }
    if name == "Fearless" { return 2008 }
    if name == "Speak Now" { return 2010 }
    if name == "Red" { return 2012 }
    if name == "1989" { return 2014 }

    return nil
}

var year = yearAlbumReleased(name: "Red")

if year == nil {
    print("There was an error")
} else {
    print("It was released in \(year!)")
}

/*
 Optionals indicate that a value might return nil. Swift makes you unwrap your optionals before you use them so as to not have any unexpected problems
 */


//Optional chaining

func albumReleased(year: Int) -> String? {
    switch year {
    case 2006: return "Taylor Swift"
    case 2008: return "Fearless"
    case 2010: return "Speak Now"
    case 2012: return "Red"
    case 2014: return "1989"
    default: return nil
    }
}

//let album = albumReleased(year: 2006)
//print("The album is \(album!)")

let str = "Hello world"
print(str.uppercased())

let album = albumReleased(year: 2006)?.uppercased()
print("The album is \(album!)")

//let album = albumReleased(year: 2006)?.someOptionalValue?.someOtherOptionalValue?.whatever

//coalescing
let album2 = albumReleased(year: 2006) ?? "unknown"
print("The album is \(album2)")

/*
 Continuing with optionals, you can chain optonals and the statment will run as long as all optionals have a value.
 Optional Coalescing lets you set a default value if the optional returns nil
 
 */

//Enumerations

func getHaterStatus2(weather: String) -> String? {
    if weather == "sunny" {
        return nil
    } else {
        return "Hate"
    }
}

enum WeatherType {
    case sun, cloud, rain, wind, snow
}

func getHaterStatus(weather: WeatherType) -> String? {
    if weather == WeatherType.sun {
        return nil
    } else {
        return "Hate"
    }
}

getHaterStatus(weather: WeatherType.cloud)


enum WeatherType2 {
    case sun2
    case cloud2
    case rain2
    case wind2
    case snow2
}

func getHaterStatus3(weather: WeatherType2) -> String? {
    if weather == .sun2 {
        return nil
    } else {
        return "Hate"
    }
}

getHaterStatus3(weather: .cloud2)

////////////////////////////////////////////////////////////////////////

//IMPORTANT

//Enumerations with additional values

enum WeatherTypeValues {
    case sun
    case cloud
    case rain
    case wind(speed: Int)
    case snow
}


func getHaterStatusValues(weather: WeatherTypeValues) -> String? {
    switch weather {
    case .sun:
        return nil
    case .wind(let speed) where speed < 10:
        return "meh"
    case .cloud, .wind:
        return "dislike"
    case .rain, .snow:
        return "hate"
    }
}

getHaterStatusValues(weather: WeatherTypeValues.wind(speed: 5))

/*
 enumerations make your code safe by ensuring you dont have any string values spelt wrong
 
 Enumerations can have additional values inside them, swift has a switch statment run through it from top to bottom, so make sure your statement is logical
 
 */

//Structs
struct Person {
    var clothes: String
    var shoes: String
}

let taylor2 = Person(clothes: "T-shirts", shoes: "sneakers")
let other = Person(clothes: "short skirts", shoes: "high heels")

print(taylor2.clothes)
print(other.shoes)


/*
 STRUCTURES act as new classes when copying each other, so if you make a copy then change the values of your copy, it doesnt change the first/priginal structure/object
 
 */


//Classes


/*
 Classes need to be initialized, therefore have an intiialization statement
 */

class Person2 {
    var clothes: String
    var shoes: String

    init(clothes: String, shoes: String) {
        self.clothes = clothes
        self.shoes = shoes
    }
}

class Singer {
    var name: String
    var age: Int

    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }

    func sing() {
        print("La la la la")
    }
}

var taylor = Singer(name: "Taylor", age: 25)

taylor.name
taylor.age
taylor.sing()

class CountrySinger: Singer {
    override func sing() {
        print("Trucks, guitars, and liquor")
    }
}

var taylor3 = CountrySinger(name: "Taylor", age: 25)
taylor3.sing()


class HeavyMetalSinger: Singer {
    var noiseLevel: Int

    init(name: String, age: Int, noiseLevel: Int) {
        self.noiseLevel = noiseLevel
        super.init(name: name, age: age)
    }

    override func sing() {
        print("Grrrrr rargh rargh rarrrrgh!")
    }
}

/*
 Classes can inherit, STRUCTS CANNOT
 
 when making a copy of  class, it only makes another refrence available instead of making a new object
 
 */
//Computed properties

struct PersonWithComputedProperties {
    var age: Int

    var ageInDogYears: Int {
        get {
            return age * 7
        }
    }
}

var fan = PersonWithComputedProperties(age: 25)
print(fan.ageInDogYears)

/*
 Computed properties let you run code when figuring out some properties
 */

//Static properties and methods

struct TaylorFan {
    static var favoriteSong = "Look What You Made Me Do"

    var name: String
    var age: Int
}

let fan2 = TaylorFan(name: "James", age: 25)
print(TaylorFan.favoriteSong)


/*
 Swift lets you create properties and methods that belong to a type, rather than to instances of a type. This is helpful for organizing your data meaningfully by storing shared data
 */


//Access control

class TaylorFan3 {
    private var name: String?
}

/*
 You can have 4 modifiers of your files:
 Public: this means everyone can read and write the property.
 Internal: this means only your Swift code can read and write the property. If you ship your code as a framework for others to use, they won’t be able to read the property.
 File Private: this means that only Swift code in the same file as the type can read and write the property.
 Private: this is the most restrictive option, and means the property is available only inside methods that belong to the type, or its extensions.
 */
