//: Playground - noun: a place where people can play

import UIKit

var salaries = [45000.0, 100000.0, 54000.0, 20000.0]

//Repeat (Do) While
var x = 0
repeat {
    salaries[x] = salaries[x] + (salaries[x] * 0.10)
    x += 1
} while (x < salaries.count)

print(salaries)

for i in 0..<salaries.count {
    salaries[i] = salaries[i] + (salaries[i] * 0.10)
}

for x in 1...5 {
    print("Index: \(x)")
}

for z in 1..<5 {
    print("Index 2: \(z)")
}

for salary in salaries {
    print("Salary: \(salary)")
}