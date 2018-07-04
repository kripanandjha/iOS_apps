//: Playground - noun: a place where people can play

import UIKit

func bmi(mass:Double,height:Double) -> Double {
   // let bmiVal:Double = mass/(height*height)
    let bmiVal:Double = mass/pow(height,2)
    if(bmiVal > 25){
        print ("You are overweight")
    }
    else if (bmiVal > 18.5 && bmiVal < 25){
        print ("you are with normal weight")
    }
    else {
        print ("You are underweight")
    }
    let shortendBmi = String (format: "%.2f", bmiVal)
    print ("shortenedBmi \(shortendBmi)")
    return bmiVal
}

print ("bmi(75,5.10) \(bmi(mass: 75, height: 1.80))")

var bmiVal:Double = bmi(mass:75,height:1.80)




