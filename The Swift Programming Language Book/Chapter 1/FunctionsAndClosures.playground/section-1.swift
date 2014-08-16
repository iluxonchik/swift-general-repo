// Playground - noun: a place where people can play

import Cocoa

func greet(name: String, day: String) -> String {
    return "Hello \(name), today is \(day)."
}

greet("Bob", "Tuesday")

func calculateStatistics(scores : [Int]) -> (min: Int, max: Int, sum: Int) {
    var min = scores[0]
    var max = scores[0]
    var sum = 0
    
    for score in scores {
        if score < min {
            min = score
        } else if score > max {
            max = score
        }
        
        sum += score
    }
    
    return (min, max, sum)
}

let statistics = calculateStatistics([5, 3, 100, 3, 9])
statistics.sum
// calculateStatistics returns 3 values: min (indexed at 0), max (indexed as 1) and sum (indexed at 2)
statistics.0 // min
statistics.1 // max
statistics.2 // sum

// Function takes variable number of arguments
func sumOf(numbers: Int...) -> Int {
    var sum = 0
    for number in numbers {
        sum += number
    }
    return sum
}
sumOf()
sumOf(1, 3, 5, 8)

func numAverage(numbers: Int...) -> Int {
    let numOfArgs = numbers.count
    var sum = 0
    
    for number in numbers {
        sum += number
    }
    
    return sum / numOfArgs
}

numAverage(2,2,2,2,2,2)


// Nested functions
func returnFifteen() -> Int {
    var y = 10
    
    func add() {
        y += 5
    }
    
    add()
    
    return y
}
returnFifteen()

// Return a function from a function
func makeIncremenet() -> (Int -> Int)  { // returns a function that takes an Int as it's only parameter and returns an ints
    
    func addOne(number: Int) -> Int {
        return 1 + number
    }
    return addOne
}

var increment = makeIncremenet() // addOne() is returened here
increment(1)

func sumNums() -> ((Int, Int) -> Int) {
    
    func sumBoth(n1: Int, n2: Int) -> Int {
        return n1 + n2
    }
    
    return sumBoth
}

var summer = sumNums() // rurns sumBoth()

summer(1,2)


// Functions can take other functions as parameters
func hasAnyMatches(list: [Int], condition: Int -> Bool) -> Bool {
    for item in list {
        if condition(item){
            return true
        }
    }
    return false
}

func lessThanTen(number: Int) -> Bool {
    return number < 10
}

var numbers = [20, 19, 7, 12]
hasAnyMatches(numbers, lessThanTen)

// Closures
numbers.map({
    (number: Int) -> Int in // "in" separates arguments and return type from the body
    let result = 3 * number
    return result
})

let mappedNumbers = numbers.map({ number in 3 * number })
mappedNumbers

let sortedNumbers = sorted(numbers) { $0 > $1 }
sortedNumbers
