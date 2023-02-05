//
//  Question.swift
//  Quizzler
//
//  Created by Sayed Ali Husain on 02/02/2023.
//

import Foundation

struct Question {
    let text: String
    let answer: String
    
    init(q: String, a: String) {
        self.text = q
        self.answer = a
    }
}
