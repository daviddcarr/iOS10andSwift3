//: Playground - noun: a place where people can play

import UIKit

//Numbers

//Integers : Int
var age = 30 //Type inference (recommended)
var weight : Int = 200 //Explicity declared type

var someNum : Double = 123981239871239812731

var milesRan = 56.4
var pi : Float = 3.14
//milesRan = pi  (creates error because milesRan is a Double type)

//Arithmetic Operators
//+ - / *

var area = 15 * 20
var sum = 5 + 6
var diff = 10 - 3
var div = 12 / 3

var divide = 13 / 5
var remainder = 13 % 5

var result = "The result of 13 / 5 is \(divide) with a remainder of \(remainder)"

var randomNumber = 13
if randomNumber % 2 == 0 {
    print("this is an even number")
} else {
    print("this is an odd number")
}

var result2 = 15 * ((5 + 7) / 3)
