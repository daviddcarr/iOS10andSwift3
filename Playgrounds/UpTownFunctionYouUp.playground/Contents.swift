//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//Shape 1
var length = 5
var width = 10

var area = length * width

//Shape 2
var length2 = 6
var width2 = 12

var area2 = length2 * width2

//Shape 3
var length3 = 3
var width3 = 8

var area3 = length3 * width3

//DRY principle : Don't Repeat Yourself

// -> defines return type
func calculateArea(length: Int, width: Int) -> Int {
    return length * width
}

//Let defines a constant
let shape1 = calculateArea(length: 5, width: 4)
let shape2 = calculateArea(length: length, width: width)

var bankAccountBalance = 500.00
var signourneyWeaverAlienStomperShoes = 350.00
var retroLunchBox = 40.00

//inout operator allows variable entered as parameter to be modified
func purchaseItem(currentBalance: inout Double, itemPrice: Double) {
    if itemPrice <= currentBalance {
        currentBalance = currentBalance - itemPrice
        print("Purchased item for: $\(itemPrice)")
    } else {
        print("You are broke. You should learn how to save money.")
    }
}

//use & before inout variable to allow direct modification
purchaseItem(currentBalance: &bankAccountBalance, itemPrice: signourneyWeaverAlienStomperShoes)

purchaseItem(currentBalance: &bankAccountBalance, itemPrice: retroLunchBox)
