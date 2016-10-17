//: Playground - noun: a place where people can play

import UIKit

var arrayA = ["a", "b", "c", "d"]
var arrayB = ["bo", "ro", "me"]
var arrayC = [String]()

func combineArrays(array1: [String], array2: [String]) -> Array<String> {
    var arrayCombined:[String] = []
    var max: Int = array1.count
    
    if array1.count < array2.count {
        max = array2.count
    }
    
    for i in 0..<max {
        
        if array1.count > i {
            arrayCombined.append(array1[i])
        }
        if array2.count > i {
            arrayCombined.append(array2[i])
        }
    }
    return arrayCombined
}

arrayC = combineArrays(array1: arrayA, array2: arrayB)

print(arrayC)

