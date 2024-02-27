import UIKit


// Exercise #1:
// Declare a variable score and a constant maxScore. Assign initial values and print them.
// Hint: https://guides.codepath.com/ios/Understanding-Swift can be a resource to check syntax

var score: Int = 32
let maxScore: Int = 50

print(score, maxScore)

// Exercise #2:
// Rewrite the following variables and constants with proper naming conventions for Swift (camelCase).

var lastName: String
let numberOfWheels: Int

// Write your code here


// Exercise #3:
// Declare a constant with an explicit type annotation for a Double and assign a value to it.

let num: Double = 200

//Exercise #4:
// Write a function that prints to the console, "Hello, CodePath!" and then call that function. This function will not take in parameters or return a value.

func printHello() {
    print("Hello, CodePath!")
}

printHello()


// Exercise #5: Declare a function with parameters
// Write a function that takes in someone's current age and returns their age after their next birthday. Then, use this function to update the age variable and print the new age to the console.

func nextAge(personAge: Int){
    var birthday = personAge + 1
    
    print(birthday)
}

nextAge(personAge: 3)
// Exercise #6: Declare a function that takes two numbers and returns if the sum is even or not
// Hint: Think of the parameter types and the return type.

func evenOrOdd(firstNum: Int, secondNum: Int) -> Bool {
    if (firstNum+secondNum) % 2 == 0 {
        return true
    }
    else {
        return false
    }
}

evenOrOdd(firstNum: 5, secondNum: 11)


