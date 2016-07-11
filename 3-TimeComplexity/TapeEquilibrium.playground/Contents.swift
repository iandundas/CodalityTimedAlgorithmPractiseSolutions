//: Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"

public func solution(inout A : [Int]) -> Int {
    
    let total = A.reduce(0, combine: +)
    
    var leftTotal = 0
    var rightTotal = total
    var minimum = Int.max
    
    for i in 0..<(A.count-1){
        let element = A[i]
        
        leftTotal = leftTotal + element
        rightTotal = rightTotal - element
        let difference = abs(rightTotal - leftTotal)
        minimum = min(difference, minimum)
    }
    
    return minimum
}

var A = [3,1,2,4,3]
//var A = [10,-5,8,2,3]
//var A = [-1000, 1000]
solution(&A)
