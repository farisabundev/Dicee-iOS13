//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // IBOutlet is reference for the UI element
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    // initial value
    let imageArray = [#imageLiteral(resourceName: "DiceOne"),#imageLiteral(resourceName: "DiceTwo"),#imageLiteral(resourceName: "DiceThree"),#imageLiteral(resourceName: "DiceFour"),#imageLiteral(resourceName: "DiceFive"),#imageLiteral(resourceName: "DiceSix")]
    
    // IBAction is reference from element to code
    @IBAction func rollButtonPressed(_ sender: UIButton) {
		
        let leftDiceNumber = Int.random(in: 0..<5)
        let rightDiceNumber = Int.random(in: 0..<5)

        diceImageView1.image = imageArray[leftDiceNumber]
        diceImageView2.image = imageArray[rightDiceNumber]
        
        // optional solution to shuffle array/random
        // diceImageView1.image = imageArray.randomElement()
        // diceImageView2.image = imageArray.randomElement()

        // var firstIndex = Int.random(in: 0...5)
        // var secondIndex = Int.random(in: 0...5)

        // func shuffleAgain() {
        //     firstIndex = Int.random(in: 0...5)
        //     secondIndex = Int.random(in: 0...5)

        //     // call function to re-shuffle
        //     shuffle()
        // }

        // func shuffle() {
        //     if firstIndex == secondIndex {
        //         shuffleAgain()
        //     } else {
        //         print("stop, got the result")
        //         diceImageView1.image = imageArray[firstIndex]
        //         diceImageView2.image = imageArray[secondIndex]
        //     }
        // }

        // shuffle()
    }
    
}

