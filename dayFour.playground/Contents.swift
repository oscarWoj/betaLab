import UIKit

var str = "Hello, playground"


//For loops

let count = 1...10

for number in count {
    print("Number is \(number)")
}

let albums = ["Red", "1989", "Reputation"]

for album in albums {
    print("\(album) is on Apple Music")
}


print("Players gonna ")

for _ in 1...5 {
    print("play")
}

/*
 Some examples of swift for-in loops
 */

//While loops
var number = 1

while number <= 20 {
    print(number)
    number += 1
}

print("Ready or not, here I come!")

/*
 while loops will keep on reiterating until their condition evaluates as false
 
 Swift has a do-while statement, it is just called repeat, it ensures the code inside is run atleast once
 
 You can exit a loop at any time using the break keyword.
 */

//Exiitng multiple loops

outerLoop: for i in 1...10 {
    for j in 1...10 {
        let product = i * j
        print ("\(i) * \(j) is \(product)")

        if product == 50 {
            print("It's a bullseye!")
            break outerLoop
        }
    }
}

/*
 To exit an outerloop, you need to label it first
 */


for i in 1...10 {
    if i % 2 == 1 {
        continue
    }

    print(i)
}

/*
 You can use the continue keyword to skip the current item
 */

