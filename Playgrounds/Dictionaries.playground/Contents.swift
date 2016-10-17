//: Playground - noun: a place where people can play

import UIKit

var namesOfIntegers = [Int: String]()

namesOfIntegers[3] = "three"
namesOfIntegers[44] = "forty four"

namesOfIntegers = [:]

var airports: [String: String] = ["YYZ": "Toronto Pearson", "LAX": "Los Angeles International", "DFW": "Dallas Fort Worth International"]

print("The airports dictionary has: \(airports.count) items")

if airports.isEmpty {
    print("The airports dictionary is empty!")
}

airports["LHR"] = "London"
airports["LHR"] = "London Heathrow"

airports["LIT"] = "Bill and Hillary Clinton National Airport"

for (airportCode, airportName) in airports {
    print("\(airportName) (\(airportCode))")
}

for key in airports.keys {
    print("Key: \(key)")
}
for val in airports.values {
    print("Value: \(val)")
}