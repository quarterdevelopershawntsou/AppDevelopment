//
//  Self Driving Car.swift
//  Classes and Objects
//
//  Created by Shawn on 18/07/2018.
//  Copyright © 2018 Shawn. All rights reserved.
//

import Foundation


//classes that are previously declared can be inherited through declaration similar to declaring class as type of string and other datatypes

class SelfDrivingCar : Car {
    
    //Question mark says the value can contain null value
    var destination : String?
    
    // Override keyword adds functionality to inherited methods
    override func drive() {
        super.drive()
        // Exclamation mark unwraps the value in "destination," but tells the program it will DEFINITELY contain a value, this is a manual override, can lead to Null Value error
//        if destination != nil{
//            print("drive towards" + destination!)
//        }
        // Optional binding implementation
        // If let phrase assigns value to userDestination ONLY IF destination contains non-Null value
        if let userDestination = destination {
            print("drive towards" + userDestination)
        }
    }
    
    
}
