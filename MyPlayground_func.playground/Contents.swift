//: Playground - noun: a place where people can play

import UIKit

//var str = "Hello, playground"
func test1(){
    print("Hello world !")
    
}

func test2(x:Int){
    print("Hello world from test2 ",x)
    
    let price:Int = x * 2
    
    print ("Total price paid \(price) till now")
}

func test3(x:Int) -> Int{
    print("Hello world from test2 ",x)
    
    let price:Int = x * 2
    
    print ("Total price paid \(price) till now")
    return 0
}

test1()

test2(x:3)
