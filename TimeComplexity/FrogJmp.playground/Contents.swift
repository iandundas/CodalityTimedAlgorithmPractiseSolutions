//: Playground - noun: a place where people can play

import Foundation
//import Glibc // need to use this for Codality/Linux

public func solution(X : Int, _ Y : Int, _ D : Int) -> Int {
    
    let result: Double = ceil(Double(Y-X) / Double(D))
    return Int(result)
}

solution(10, 85, 30)
