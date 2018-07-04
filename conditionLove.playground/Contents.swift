//: Playground - noun: a place where people can play

import UIKit

func loveCalculator(yourName: String, theirName: String) -> Int{
    let loveScore = Int(arc4random_uniform(101))
    if (loveScore > 80){
        print ("your love is like kanye loves kanye")
    }
    else if (loveScore > 40 && loveScore <= 80) {
        print ("your love is like Jack got mentos")
    }
    else {
        print ("No love possible, you'll live forever alone")
    }
    return loveScore
}

print(loveCalculator(yourName: "Kp", theirName: "Pk"))
