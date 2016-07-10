//: Playground - noun: a place where people can play

import Cocoa

// you can also use imports, for example:
// import Foundation
// import Glibc

// you can write to stdout for debugging purposes, e.g.
// print("this is a debug message")

public func solution(inout arrayA : [Int]) -> Int {
    guard arrayA.count > 0 else {fatalError("should not be empty")}
    guard arrayA.count % 2 != 0 else {fatalError("Should be odd number of elements in array")}
    

    
    /* naive implementation: */
/*  let sorted = arrayA.sort()
    var total = 0
    var shouldSubtract = false

    sorted.forEach { x in
        if shouldSubtract {
            total = total - x
        }
        else{
            total = total + x
        }
        shouldSubtract = !shouldSubtract
    }
    return total*/
    
    
    
    
    /* Bitwise XOR implementation: */
    let result = arrayA.reduce(0) { (total, x) -> Int in
        return total ^ x
    }
    
    return result
}



var A = [
    9,// 0
    3,
    9,// 2
    3,
    9,// 4
    7,
    9 // 6
]

solution(&A)
