//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var intArray = [13, 29, 33, 46, 57, 61, 72, 80, 93, 105]
//print(intArray.count)
//
//for number in intArray {
//    
//    for i in intArray {
//        
//        var lowNumber = intArray[0..<50]
//        print(lowNumber)
//    }
//    
//    
//    
//}



 ** 

func myFunc(array: [Int]) {
    
    for number in array {
        
        if number < 50 {
            print("Low")
        } else {
            print("High")
        }
        let printedStatement = number < 50 ? "low" : "high"
        print(printedStatement)
    }
}

myFunc(intArray)


func loopTHrough(array: [Int]) {
    
    var oldValue = 0
    var highestValue = 0
    var secondHighestValue = 0
    
    for number in array {
        
        var printedSatement: String = ""
        printedSatement = printedSatement + (number < 50 ? "" : "")
        
    }
    
    
}

// MARK: Nil Coalescing Operator

var variable1: Int?
var variable2: Int?

variable2 = 15

let array: [Int] = [variable1 ?? 0, variable2 ?? 0]


// MARK: Black Diamond
func simplify(array: [Int]) -> [Int] {
    
    let sortedArray = array.sort(<)
    var lastNum = 0
    var newArray: [Int] = []
    for (index, number) in sortedArray.enumerate() {
        newArray += number != lastNum || index == 0 ? [number] : []
        lastNum = number
    }
    return newArray
}
