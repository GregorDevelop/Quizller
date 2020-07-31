//
//  Question.swift
//  Quizller
//
//  Created by Egor  on 31.07.2020.
//  Copyright © 2020 Gregor Kramer. All rights reserved.
//

import Foundation

struct Question {
    let text : String
    let answer : String
    
    init(q: String, a: String) {
        text = q
        answer = a
    }
}
