//
//  GameLogic.swift
//  CS_5330_A5
//
//  Created by Kyle Zimmerman on 2/5/24.
//

import Foundation

struct GameLogic {
    // Stage 1
    let question1 = "You're the captain of the starship Odyssey, and you've just received orders to embark on a critical mission to Space Station Titan. The journey will be perilous, and the decisions you make will determine the fate of your crew and mission."
    let choices1 = [
        "Perform a systems check before takeoff.", // safe
        "Trust in the ground crew's checks and lift off immediately." // risk
    ]
    
    // Stage 2
    let question2 = "After a successful lift-off, you're alerted to an unexpected asteroid field directly in your path."
    let choices2A = [
        "Navigate through the safest path detected by your systems check.", // safe
        "Use the ship's lasers to clear a path." // risk
    ]
    let choices2B = [
        "Use the delay to calculate a precise path through the asteroids.", // safe
        "Attempt a risky maneuver to fly above the asteroid field." // risk
    ]
    
    // Stage 3
    let question3 = "You've finally reached Space Station Titan, but the station's docking system is malfunctioning."
    let choices3 = [
        "Wait for station engineers to fix the system.", // safe
        "Perform a manual docking procedure." // risk
    ]
    
    // Struct/Game Variables
    var currentStageIndex: Int = 0
    var previousAnswers: [String] = []
    var currentStage: Stage

    // Struct/Game Methods
    mutating func getQuestions() -> [String]{
        return [question1, question2, question3]
    }
    
    mutating func getChoices() -> [[String]] {
        return [choices1, choices2A, choices2B, choices3]
    }
    
    mutating func setAnswer(answer: String) {
        previousAnswers.append(answer)
    }
    
    mutating func reset() {
        currentStageIndex = 0;
        previousAnswers = [];
    }
    
    func getStage() -> Stage {
        return currentStage
    }
    
    mutating func incrementStageIndex() {
        currentStageIndex += 1
    }
    
    mutating func setStage(stageNumber: Int) {
        if(currentStageIndex > 3) {
            reset()
        }
        
        let questions = getQuestions()
        let choices = getChoices()
        
        if(currentStageIndex == 1) {
            currentStage = Stage(question: questions[0], choice1: choices[0][0], choice2: choices[0][1])
        }
        
        if(currentStageIndex == 2) {
            if(previousAnswers.last == "safe") {
                currentStage = Stage(question: questions[1], choice1: choices[1][0], choice2: choices[1][1])
            } else {
                currentStage = Stage(question: questions[1], choice1: choices[2][0], choice2: choices[2][1])
            }
        }
        
        if(currentStageIndex == 3) {
            currentStage = Stage(question: questions[2], choice1: choices[3][0], choice2: choices[3][1])
        }
    }
    
}
