import UIKit

/*
 I didnt write alot of notes about this because it is simple enough,
 */

//Arithmatic
/*
 Apple supports addition subtraction, division, multiplication, modulus
 */

//Operator overloading

let fakers = "Fakers gonna "
let action = fakers + "fake"
print(action)

/*
 you can "add" strings and arrays together in swift (combine)
 */

//Comparison operators

/*
 2 > 3
 2 >= 2
 2 == 2
 2 != 3
 
 you can also compare strings as they have a natrual alphabetical order
 */


//Conditionals

let firstCard = 11
let secondCard = 10

if firstCard + secondCard == 21 {
    print("Blackjack!")
}



/*
 you can also chain together else if statements similarily to pythons elif
 
 */

//Combining operators:
/*
 Swift has two combination operators,
 && (and)
 -both sides have to be true
 
 and
 
 
 || (or)
 -one side has to be true
 */

//Ternary operators
let firstCard2 = 11
let secondCard2 = 10
print(firstCard2 == secondCard2 ? "Cards are the same" : "Cards are different")

//The above is the same as the bottom
if firstCard == secondCard {
    print("Cards are the same")
} else {
    print("Cards are different")
}

/*
 That ternary checks whether the two cards are the same, then prints “Cards are the same” if the condition is true, or “Cards are different” if it’s false.
 */

//Switch statments

let weather = "sunny"


switch weather {
case "rain":
    print("Bring an umbrella")
case "snow":
    print("Wrap up warm")
case "sunny":
    print("Wear sunscreen")
default:
    print("Enjoy your day!")
}

/*
 Swift uses switch statments to clean up possible multiline if statments
 */


//Range operators

let score = 85

switch score {
case 0..<50:
    print("You failed badly.")
case 50..<85:
    print("You did OK.")
default:
    print("You did great!")
}

/*
 Swift uses ranges:
 Swift gives us two ways of making ranges: the ..< and ... operators. The half-open range operator, ..<, creates ranges up to but excluding the final value, and the closed range operator, ..., creates ranges up to and including the final value.

 For example, the range 1..<5 contains the numbers 1, 2, 3, and 4, whereas the range 1...5 contains the numbers 1, 2, 3, 4, and 5.
 */
