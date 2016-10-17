//: Playground - noun: a place where people can play

import UIKit

class Vehicle {
    var tires = 4
    var headlights = 2
    var horsepower = 468
    var model = ""
    
    func drive() {
        //accelerate the vehicle
    }
    
    func brake() {
        //Stop the vehicle
    }
}

let bmw = Vehicle()
bmw.model = "M5"

let ford = Vehicle()
ford.model = "F150"
ford.brake()

func passByReference(vehicle: Vehicle) {
    vehicle.model = "Cheese"
}

print(ford.model)

passByReference(vehicle: ford) //Pass by reference

print(ford.model)



//var someonesAge = 20

//func passByValue(age: Int) {
//    let newAge = age
//}

//^^ WHAT!? ^^



