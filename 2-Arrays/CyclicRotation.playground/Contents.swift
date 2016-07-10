//: Playground - noun: a place where people can play

import Cocoa

// you can also use imports, for example:
// import Foundation
// import Glibc

// you can write to stdout for debugging purposes, e.g.
// print("this is a debug message")


public func solution(inout aArray : [Int], _ kTimes : Int) -> [Int] {
    guard aArray.count > 0 else {return aArray}
    
    var rotating = aArray // make mutable
    
    for _ in 0..<kTimes {
        
        // get the last element of the array: 
        let last = rotating.removeLast()
        
        // append to rotating
        rotating = [last] + rotating
    }
    
    return rotating
}
