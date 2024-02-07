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
        "Attempt a risky maneuver to fly above the asteroid field.", // risk
        "Use the delay to calculate a precise path through the asteroids." // safe
    ]
    
    // Stage 3
    let question3 = "You've finally reached Space Station Titan, but the station's docking system is malfunctioning."
    let choices3 = [
        "Perform a manual docking procedure.", // risk
        "Wait for station engineers to fix the system." // safe
    ]
}
