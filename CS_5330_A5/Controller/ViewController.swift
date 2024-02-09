//
//  ViewController.swift
//  CS_5330_A5
//
//  Created by Kyle Zimmerman on 2/4/24.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var backGroundImage: UIImageView!
    @IBOutlet weak var header: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var buttonOne: UIButton!
    @IBOutlet weak var buttonTwo: UIButton!
    @IBOutlet weak var rewardImage: UIImageView!
    @IBOutlet weak var missionLabel: UILabel!
    @IBOutlet weak var resetButton: UIButton!
    
    var gameLogic = GameLogic()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    func setupUI() {
        // set the stage
        gameLogic.setStage()
        
        // set the background Image
        setBackGround(index: gameLogic.currentStageIndex)
        
        // set the header
        setHeader(index: gameLogic.currentStageIndex)
        
        // set the question
        questionLabel.text = gameLogic.currentStage.question
        
        // set buttonOne text
        buttonOne.setTitle(gameLogic.currentStage.choice1, for: .normal)
        
        // set buttonTwo text
        buttonTwo.setTitle(gameLogic.currentStage.choice2, for: .normal)
        
        // set rewardImage
        setReward()
        
        // set missionLabel
        setMissionLabel()
        
        // conditional display reset button
        setResetButton()
    }
    
    func setBackGround(index:Int) {
        if(index == 1) {
            backGroundImage.image = UIImage(named: "level-1")
        }
        
        if(index == 2) {
            backGroundImage.image = UIImage(named: "level-2")
        }
        
        if(index == 3){
            backGroundImage.image = UIImage(named: "level-3")
        }
    }
    
    func setHeader(index: Int) {
        if(index == 1) {
            header.text = "Stage 1"
        }
        
        if(index == 2) {
            header.text = "Stage 2"
        }
        
        if(index == 3){
            header.text = "Stage 3"
        }
    }
    
    func setReward() {
        if(gameLogic.outcome == true) {
            let randomNumber = Int.random(in: 1...8)
            rewardImage.image = UIImage(named: "\(randomNumber)")
        } else {
            rewardImage.image = nil
        }
        
        if(gameLogic.gameOver == false) {
            rewardImage.image = nil
        }
    }
    
    func setMissionLabel() {
        if(gameLogic.currentStageIndex <= 3) {
            missionLabel.text = ""
            return
        }
        
        if(gameLogic.outcome == true && gameLogic.currentStageIndex > 3) {
            missionLabel.text = "Mission Success!"
        } else {
            missionLabel.text = "Mission Failed!"
        }
    }
    
    func setResetButton() {
        if(gameLogic.gameOver == true) {
            resetButton.setTitle("Play Again", for: .normal)
            resetButton.isHidden = false
        } else {
            resetButton.isHidden = true
        }
    }

    @IBAction func buttonOneAction(_ sender: UIButton) {
        if(gameLogic.currentStageIndex < 3) {
            gameLogic.incrementStageIndex()
            gameLogic.setAnswer(answer: "safe")
            gameLogic.setStage()
            setupUI()
        } else {
            gameLogic.incrementStageIndex()
            gameLogic.gameOutCome()
            setReward()
            setMissionLabel()
            setupUI()
        }
    }
    
    @IBAction func buttonTwoAction(_ sender: UIButton) {
        // example:
        if(gameLogic.currentStageIndex < 3) {
            gameLogic.incrementStageIndex()
            gameLogic.setAnswer(answer: "risk")
            gameLogic.setStage()
            setupUI()
        } else {
            gameLogic.incrementStageIndex()
            gameLogic.gameOutCome()
            setReward()
            setMissionLabel()
            setupUI()
        }
    }
    
    @IBAction func resetButtonAction(_ sender: Any) {
        gameLogic.reset()
        setReward()
        setupUI()
    }
}

