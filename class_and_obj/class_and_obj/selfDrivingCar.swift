//
//  selfDrivingCar.swift
//  class_and_obj
//
//  Created by project on 7/3/18.
//  Copyright © 2018 Kripanand Jha. All rights reserved.
//

import Foundation


class selfDrivingCar: Car {
 
    var destination: String = "1 infinite loop"
    
    override func drive() {
        super.drive()
        print ("Driving to \(destination)")
    }
}
