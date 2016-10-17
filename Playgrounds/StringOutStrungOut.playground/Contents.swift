//: Playground - noun: a place where people can play

import UIKit

//Explicit types
var str: String = "Hello, playground"

//Type inference
var firstName = "Jack"
var lastName = "Bauer"

var age = 45

//String Concatenation
var fullName = firstName + " " + lastName

//String Interpolation
var fullName2 = "\(firstName) \(lastName) is \(age)."

fullName.append(" III")

var bookTitle = "revenge of the crab cakes"

bookTitle = bookTitle.capitalized

var chatroomAnnoyingCapsGuy = "GG NOOBS, GTFO"

var lowercasedChat = chatroomAnnoyingCapsGuy.lowercased()

//Profanity Filter
var sentence = "What the fuck?! That shit is crazy!"

if sentence.contains("fuck") || sentence.contains("shit") {
    sentence = sentence.replacingOccurrences(of: "fuck", with: "f*@#")
    sentence = sentence.replacingOccurrences(of: "shit", with: "s#!&")
}