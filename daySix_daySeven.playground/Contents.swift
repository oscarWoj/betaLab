import UIKit


/*
 All in all, i see closures as a more complicated function, without needing to be so complicated
 */


//accepting parameters in a closure

let driving = { (place: String) in
    print("I'm going to \(place) in my car")
}
driving("London")

/*
 Closures are basically functions, you can input parameters as above
 */


//Return values

let drivingWithReturn = { (place: String) -> String in
    return "I'm going to \(place) in my car"
}

let message = drivingWithReturn("London")
print(message)

/*
 Similair to functions, functions serve the same purpose but more simpler
 */

let driving1 = {
    print("I'm driving in my car")
}

func travel(action: () -> Void) {
    print("I'm getting ready to go.")
    action()
    print("I arrived!")
}

travel(action: driving1)

//Closures with return values


func travel(action: (String) -> String) {
    print("I'm getting ready to go.")
    let description = action("London")
    print(description)
    print("I arrived!")
}

travel { (place: String) -> String in
    return "I'm going to \(place) in my car"
}

/*
 you can return values in closures similarily to functions
 */


//Multiple parameters
func travel(action: (String, Int) -> String) {
    print("I'm getting ready to go.")
    let description = action("London", 60)
    print(description)
    print("I arrived!")
}

travel {
    "I'm going to \($0) at \($1) miles per hour."
}

/*
 You can use take multiple values into  your closure
 */
