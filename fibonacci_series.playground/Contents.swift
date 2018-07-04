//: Playground - noun: a place where people can play

import UIKit

// 1, 1, 2, 3, 5, 8, 13
func fibb(_ n: Int) -> Int {
    var a: Int = 1
    var b: Int = 1

    if (n <= 0) {
        return 0
    }
    
    else if ((n  == 1) || (n == 2)) {
        return a
    }
    var c : Int = 0
    var i : Int = 2
    print (a)
    print (b)
    while ( i < n) {
        c = a+b
        print (c)
        a = b
        b = c
        i += 1
    }
    return c
    
}

print ("enter n value upto which you want the fibonacci series")
fibb(6)
