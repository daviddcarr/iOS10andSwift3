//: Playground - noun: a place where people can play

import UIKit

var lotteryWinnings : Int?


if lotteryWinnings != nil {
    //Exclamation mark unwraps the value (for non strings?)
    print(lotteryWinnings!)
}

lotteryWinnings  = 10000

//If lotteryWinnings has a value, assign it to winnings (preferred method)
if let winnings = lotteryWinnings {
    print(winnings)
}

class Car {
    var model: String?
    
}

var vehicle: Car?

//if let v = vehicle {
//    if let m = v.model {
//        print(m)
//    }
//}

vehicle = Car()
vehicle?.model = "Bronco"

if let v = vehicle, let m = v.model {
    print(m)
}

var cars: [Car]?
cars = [Car]()

//if let carArr = cars {
//    if carArr.count > 0 {
//
//    }
//}


//If - where to replace above code
if let carArr = cars , carArr.count > 0 {
    //only execute if not nil and if more than 0 elements
    
    
} else {
    cars?.append(Car())
    print(cars?.count)
}

class Person {
    //var age: Int! // ! Definitely going to be a value, without a doubt
    //var age = 0 //recommended method over above
    private var _age: Int! //Private only class Person can access
    var age: Int { //Set default value if _age isn't already set
        if _age == nil {
            _age = 0
        }
        return _age
    }
    
    func setAge(newAge: Int) {
        self._age = newAge
    }
}

var jack = Person()

class Dog {
    var species: String
    
    
    //Construct (if you initialize properties in constructor, you don't need ! or ?
    init(someSpecies: String) {
        self.species = someSpecies
    }
}

var lab = Dog(someSpecies: "Black Lab")
print(lab.species)
