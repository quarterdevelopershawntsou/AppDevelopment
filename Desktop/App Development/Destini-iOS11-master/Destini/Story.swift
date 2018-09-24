//
//  Story.swift
//  Destini
//
//  Created by Shawn on 12/07/2018.
//  Copyright © 2018 London App Brewery. All rights reserved.
//

import Foundation

class Story {
    
    let storyText : String
    let answerTagOne : String
    let answerTagTwo : String
    
    init (text : String, pickedAnswerOne : String, pickedAnswerTwo : String){
        storyText = text
        answerTagOne = pickedAnswerOne
        answerTagTwo = pickedAnswerTwo
    }

}
