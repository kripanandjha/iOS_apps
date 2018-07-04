//: Playground - noun: a place where people can play

import UIKit

let arrayOfNumbers = [1,2,3,4,5,23,11]

var sum:Int = 0
for number in arrayOfNumbers {
    sum += number
}

print ("sum is \(sum)")


for number in 1...10  where number % 2 == 0 { // only even number case will print number
    print (number)
}
