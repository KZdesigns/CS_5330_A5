//
//  Stage.swift
//  CS_5330_A5
//
//  Created by Kyle Zimmerman on 2/5/24.
//

import Foundation

class Stage {
    var question: String
    var choice1: String
    var choice2: String

    init(question: String, choice1: String, choice2: String) {
        self.question = question
        self.choice1 = choice1
        self.choice2 = choice2
    }
}
