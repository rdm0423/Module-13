//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

let intArray = [0, 13, 9, 4, 5, 34, 87, 98, 23]
func loopyArray(arrayofInt: [Int]) {
    var lastNum = 0
    for i in intArray {
        var statement = ""
        statement = i > lastNum ? "Its growing!" : "Its not growing :( "
        statement += i<50 ? " And it's small.":" And it's big."
        print(statement)
        lastNum = i
    }
}
loopyArray(intArray)
var number: Int? = nil
print(number)
let newNumber = number ?? 0
print(newNumber)
func simplify(array: [Int]) -> [Int] {
    let sortedArray = array.sort(<)
    var lastNum = 0
    var newArray: [Int] = []
    for (index, number) in sortedArray.enumerate() {
        newArray += number != lastNum || index == 0 ? [number]:[]
        lastNum = number
    }
    return newArray
}
simplify([0,9,8,3,3,3,5,9,5,0])