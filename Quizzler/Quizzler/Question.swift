//
//  Question.swift
//  Quizzler
//
//  Created by project on 6/5/18.
//  Modified by Kripanand Jha on 04/07/2018
//  Copyright © 2018 London App Brewery. All rights reserved.
//

import Foundation

class Question {
    let questionText: String
    let answer: Bool
    
    init(text: String, correctAnswer:Bool) {
        questionText = text
        answer = correctAnswer
    }
}

//class myOtherClass {
//    let Question = Question(text: "What is my Name?", correctAnswer: true)
//}

