//
//  Car.swift
//  class_and_obj
//
//  Created by project on 7/3/18.
//  Copyright © 2018 Kripanand Jha. All rights reserved.
//

import Foundation

var `class` = 1

enum carType {
    case Sedan
    case coupe
    case Hatchback
}
// name of the class should have capital first letter
class Car {
// class properties
    var colour = "Black"
    var numberOfSeats = 4
    var typeOfCar: carType = .Sedan
    
    init() {
        
    }
    convenience init(customerChoosenColour: String) {
        self.init()
        colour = customerChoosenColour
    }
    
    func  drive() {
        print ("car is moving")
    }
}
