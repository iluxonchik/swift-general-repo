// Playground - noun: a place where people can play

import Cocoa

var aVariable = 42
aVariable = 50
let aConstant = 42

let implicitInteger = 70
let implicitDouble = 70.0
let explicitDouble : Double = 70
let explicitConstant : Float = 4


let label = "The width is "
let width = 94
let widthLabel = label + String(width)

let apples = 3
let oranges = 5
let appleSummary = "There are \(apples) apples."
let fruitSummary = "There are \(apples + oranges) fruits"
let calc = "12.2 + 13.1 = \(12.2 + 13.1)"

// Dictionaries and Lists
var shoppingList = ["catfish", "water", "tulips", "blue paint"]
shoppingList[1] = "bottle of water"

var occupations = ["Malcolm" : "Captain",
    "Kaylee" : "Mechanic"]
occupations["Jane"] = "Public Relations"

// Create an empty array
let emptyArray = [String]()

// Create an empty dictionary
let emptyDictionary = [String: Float]()

