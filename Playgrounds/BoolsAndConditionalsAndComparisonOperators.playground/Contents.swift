//: Playground - noun: a place where people can play

import UIKit

var amITheBestTeacherEver: Bool = true

amITheBestTeacherEver = false

//Comparison operator
if true == false || true == true {
    print("WTF")
}

var hasDataFinishedDownloading: Bool = false
//...
//...
if !hasDataFinishedDownloading {
    print("Loading Data...")
}

hasDataFinishedDownloading = true
//Load UI and other app features

// Equal to: ==
// Not equal to: !=
// Greater than: >
// Greater than or equal to: >=
// Less than: <
// Less than or equal to: <=

var bankBalance = 400
var itemToBuy = 400

if bankBalance >= itemToBuy {
    print("purchased item")
}

if itemToBuy > bankBalance {
    print("You need mo' money foo")
}

if itemToBuy == bankBalance {
    print("Hey buddy, your balance is now 0")
}

var bookTitle1 = "Harry Glo"
var bookTitle2 = "Harry Glo"

if bookTitle1 != bookTitle2 {
    print("Need to fix spelling before printing")
} else if bookTitle2.characters.count > 10 {
    print("Find a new title for the book")
}else {
    print("Book looks great, send to printer")
}