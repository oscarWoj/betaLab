import PlaygroundSupport
import UIKit

/*
 All notes are in the form:
 
 //Title of lesson
 
 sample code
 x
 y
 z
 
 
 /*
 Ending remarks/notes
 */
  
 
 */




//Variables
var str = "Hello, playground"

str = "Hello World"

/* Variables get initialized by "var" and can be changed by setting them to a new value
 */


//Strings and Integers

var age = 38

var population = 8_000_000

var double = 21.2

/*
 You cannot change values to a diffrent type, ie Int and String, Bool
 */



//Multi-line strings

var str1 = """
This goes
over multiple
lines
"""

var str2 = """
This goes \
over multiple \
lines
"""
//Adding a forward slash gets ride of the line breaks

/*
 Swift is capable of taking multiline quotes. (All it does is add a \n at every new line)
 */




//Doubles and Boolean

var pi = 3.141

var awesome = true
awesome = false

/*
 doubles are different from integers, doubles can hold larger numbers AND/OR fractions
 Booleans can only hold True or False statments
 */




//String Interpolation

var score = 85
var string1 = "Your score was \(score)"

string1 = "Your score doubled was \(score*2)"

var results = "The test results are here: \(string1)"

/*
 String interpolation "Plugs in" variables and other values into strings, code can be run inside the interpolation
 */


//constants
let taylor = "swift"

/*
 //taylor = "Cant Change taylor"
 Useful for preventing errors, let sets your variable as a constant and does not allow it to be changed
 */

//Type Annotations

let string2 = "Hello, playground"

let album: String = "Reputation"
let year: Int = 1989
let height: Double = 1.78
let taylorRocks: Bool = true

/*
 Type annotations let you specifically assign a type to your variable.
 */



