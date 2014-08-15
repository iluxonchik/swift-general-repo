// Playground - noun: a place where people can play

import Cocoa

let individualScores = [75, 43, 103, 87, 12]

var teamScore = 0

for score in individualScores {
    if score > 50{
        teamScore += 3
    } else {
        teamScore += 1
    }
}

teamScore // a simple way to see the value of a var in the PlayGround


// Exaples of optional values
var optionalString: String? = "Hello"
optionalString == nil


var optionalName: String? = "John AppleSeed"

var greeting = "Hello"

optionalName = nil

if let name = optionalName {
    greeting = "Hello, \(name)"
} else {
    greeting = "What's up?"
}


// switch statemnts aren't limited to integers
let vegetable = "Red Pepper"

switch vegetable {
    
case "cleery" :
    let vegetableComment = "It's a celery!"

case "cocumber":
    let vegetableComment = "It's a cocumber!"

case let x where x.hasSuffix("Pepper"):
    let vegetableComment = "It's a spicy \(x)"

default:
    let vegetableComment = "It's something else!"
}


// for-in with dictionaries

let interestingNumbers = [
    "Prime" : [2,3,5,7,11,13],
    "Fibonacci" : [1,1,2,3,5,8],
    "Square" : [1,4,9,15,25] // if a comma is added here, it still works
]

var largest = 0
var varType = "Prime"

for (kind, numbers) in interestingNumbers {
    for number in numbers{
        
        if number > largest{
            largest = number
            varType = kind
        }
    }
}
largest
varType

// While loop examples
var n = 2
while n < 100 {
    n = n * 2
}
n

var m = 2

do {
    m = m * 2
} while n < 100

m



// The loops below are equivalent
var firstForLoop = 0
for i in 0..<4 {
    firstForLoop += 1
}
firstForLoop

var secondForLoop = 0
for var i = 0; i < 4; i++ {
    secondForLoop++
}

// NOTE: Use "..<" to make a range that omits its upper value and ".." to make a range
// that includes both, the upper and the lower values.ssss

















