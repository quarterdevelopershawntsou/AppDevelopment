//
//  Question.swift
//  Quizzler
//
//  Created by Shawn on 11/07/2018.
//  Copyright © 2018 London App Brewery. All rights reserved.
//

import Foundation

class Question {
    
    let questionText : String
    let answer : Bool
    
    //properties = variables that are associated with a Class
    //method = function associated with a class = function within class's curly brackets
    
    //initialiser
    init(text: String, correctAnswer: Bool){
        questionText = text
        answer = correctAnswer
    }
    
}
