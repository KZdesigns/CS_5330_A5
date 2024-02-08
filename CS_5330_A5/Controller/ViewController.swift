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
    
    let gameLogic = GameLogic.self
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func setupUI() {
        // set the background Image
        backGroundImage.image = UIImage(named: "level-1")
        // set the header
        header.text = "Stage 1"
        
        // set the question
            // to do this we need a stage
        // set buttonOne text
        // set buttonTwo text
        
        
        // set rewardImage
        // set missionLabel
    }
    
    @IBAction func buttonOneAction(_ sender: Any) {
    }
    
    @IBAction func buttonTwoAction(_ sender: Any) {
    }
    

}

