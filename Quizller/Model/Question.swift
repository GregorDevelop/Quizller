//
//  Question.swift
//  Quizller
//
//  Created by Egor  on 31.07.2020.
//  Copyright © 2020 Gregor Kramer. All rights reserved.
//

import Foundation

struct Question {
    let text: String
    let answers: [String]
    let rightAnswer: String
    
    init(q: String, a: [String], correctAnswer: String) {
        text = q
        answers = a
        rightAnswer = correctAnswer
    }
}
