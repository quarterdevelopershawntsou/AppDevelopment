//
//  Car.swift
//  Classes and Objects
//
//  Created by Shawn on 18/07/2018.
//  Copyright © 2018 Shawn. All rights reserved.
//

import Foundation
enum CarType {
    
    case Sedan
    case Coupe
    case Hatchback
    
}

class Car {
    
    var colour = "Black"
    var numberOfSeats = 5
    var typeOfCar : CarType = .Coupe
    
    //designated initialiser vs convenient initialiser
    
    init() {
    }
    
    convenience init(customerChosenColour : String){
        self.init()
        colour = customerChosenColour
    }
    
    //function wihtin class it's a method
    
    func drive (){
        print("car is moving")
    }
    
}
