//: Playground - noun: a place where people can play

import Cocoa

func binaryArray(int: Int) -> [Int]{
    let binaryString:Int->String = {a in return String(a, radix: 2)}
    
    let string = binaryString(int)
    return string.characters.map {String($0)}.map {Int($0)}.flatMap{$0}
}

public func solution(N : Int) -> Int {
    
    let array = binaryArray(N)
    var high = 0
    var counter = 0
    array.forEach { x in
        if x == 0 {
            counter += 1
            high = max(counter, high)
        }
        else{
            counter = 0
        }
    }
    
    return high
}


solution(1041)
