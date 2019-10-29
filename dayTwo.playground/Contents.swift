import UIKit


//Arrays
let john = "John Lennon"
let paul = "Paul McCartney"
let george = "George Harrison"
let ringo = "Ringo Starr"

let beatles = [john, paul, george, ringo]

var favoriteBeatle = beatles[1]
/*
 Arrays let you store multiple variables, EVERYTHING IN THE ARRAY MUST BE OF THE SAME TYPE
 */

//Sets
let colors = Set(["red", "green", "blue"])
let colors2 = Set(["red", "green", "blue", "red", "blue"])

/*
 Sets are unordered and every item inside is unique
 */

//Tuples
var name = (first: "Taylor", last: "Swift")
var lastThreeScores = (85,21,32)
lastThreeScores.0 = 21
print(lastThreeScores)

/*
 You can change values in a tuple, you just cannot change the name or size
 */


//Arrays vs Sets vs Tuples
let address = (house: 555, street: "Taylor Swift Avenue", city: "Nashville")
let set = Set(["aardvark", "astronaut", "azalea"])
let pythons = ["Eric", "Graham", "John", "Michael", "Terry", "Terry"]

/*
 Tuples are useful where each item has a name and/or their position is important
 Sets are useful when your collection has to be unique
 Arrays are useful all around, the most common way
 */


//dictionaries

var heightsOfCelebrities = [
    "Taylor Swift": 1.78,
    "Ed Sheeran": 1.73
]

heightsOfCelebrities["Taylor Swift"]

let favoriteIceCream = [
    "Paul": "Chocolate",
    "Sophie": "Vanilla"
]

favoriteIceCream["Oscar", default:"Unknown"]

/*
 Dictionaries are in the form of: [String: anyType]
 If the string you are looking for doesnt exist, you will recieve a value of nil
 If you do not know if the key exists, you can use a default value
*/


//Creating empty collections

var teams = [String: String]()

teams["Paul"] = "Red"

var words = Set<String>()
var numbers = Set<Int>()


var scores = Dictionary<String, Int>()
var results = Array<Int>()

var results2: [Int] = []
var set2: Set<Int> = []
var dictionary: [String:Int] = [:]

scores["Oscar"] = 12

/*
 If you want to create an empty collection, you need to declare the type of variables that will be held. Dictionaries and arrays use square brackets[], all other types use angle brackets<>
 */


//Enumerations

enum Result {
    case success
    case failure
}

var enumString: Result

enumString = Result.success

switch enumString {
case .success:
    print("Success")
case .failure:
    print("Faliure")
}


enum Activity {
    case bored
    case running(destination: String)
    case talking(topic: String)
    case singing(volume: Int)
}

let talking = Activity.talking(topic: "football")

/*
    Enumerations eliminate the risk of using strings as flags/indicators, enums are useful when there are a set number of results I.E. simple Compass Directions
 */

//Enumeration Raw Values

enum Planet: Int {
    case mercury = 1
    case venus
    case earth
    case mars
}

let earth = Planet(rawValue: 3)

print(earth!)

/*
 Raw values let you give numerical values to enumerations, the same index as you declared them. If you want it to start at a specific number, like with the above value mercury, you must declare it in the enumeration decleration
 */


