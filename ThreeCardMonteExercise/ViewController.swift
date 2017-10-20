//
//  ViewController.swift
//  ThreeCardMonteExercise
//
//  Created by C4Q on 10/16/17.
//  Copyright © 2017 C4Q. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var message1: UILabel!
    var winningNumber = Int(arc4random_uniform(3))
    @IBOutlet weak var Button3: UIButton!
    @IBOutlet weak var Button2: UIButton!
    @IBOutlet weak var Button1: UIButton!
    
    var allImages: Array<UIButton> = []

    override func viewDidLoad() {
        super.viewDidLoad()
        startNewGame()
        allImages = [Button1, Button2, Button3]
        
    }
    

    @IBAction func NewGameButton(_ sender: UIButton) {
        startNewGame()
    }
    
    func startNewGame() {
        Button1.setImage(#imageLiteral(resourceName: "cardBackRed"), for: .normal)
        Button2.setImage(#imageLiteral(resourceName: "cardBackRed"), for: .normal)
        Button3.setImage(#imageLiteral(resourceName: "cardBackRed"), for: .normal)
        message1.text = "welcome"
        enableButtons()
    }
    func disableButtons(){
        for button in allImages {
            button.isUserInteractionEnabled = false
        }
    }
    func enableButtons(){
        for button in allImages {
            button.isUserInteractionEnabled = true
        }
    }
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        if winningNumber == (sender.tag) {
            sender.setImage(#imageLiteral(resourceName: "kingCard"), for: .normal)
            message1.text = "You Won"
        }
        else {
            sender.setImage(#imageLiteral(resourceName: "threeCard"), for: .normal)
            message1.text = "You Lost"
            allImages[winningNumber].setImage(#imageLiteral(resourceName: "kingCard"), for: .normal)
        }
        disableButtons()
        
       
        
    }
}






