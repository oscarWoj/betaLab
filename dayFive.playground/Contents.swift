import UIKit

//Functions


func printHelp() {
    let message = """
Welcome to MyApp!

Run this app inside a directory of images and
MyApp will resize them all into thumbnails
"""

    print(message)
}

printHelp()
/*
 To define a function you have to use the "func" keyword, to run it, you just have to select it later
 */

func square(number: Int) -> Int {
    print(number * number)
    return number*number
}
/*
 your functions can take in paramaters, and return values
 */

func sayHello(to name: String) {
    print("Hello, \(name)!")
}

sayHello(to: "Taylor")

/*
 Swift lets us provide two names for each parameter: one to be used externally when calling the function, and one to be used internally inside the function. This is as simple as writing two names, separated by a space.
 You can also omit the name by using an underscore
 
 */


//Varidic functions


/*
 Some functions are variadic, which is a fancy way of saying they accept any number of parameters of the same type.
 You can make any parameter variadic by writing ... after its type. So, an Int parameter is a single integer, whereas Int... is zero or more integers – potentially hundreds.
 */

//Inout

func doubleInPlace(number: inout Int) {
    number *= 2

}
var myNum = 10
doubleInPlace(number: &myNum)

/*
 By writing inout in your decleration and placing an ampersand infront of a value, it lets you manipulate the inputted value
 */
