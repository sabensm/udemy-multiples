//
//  ViewController.swift
//  Multiples
//
//  Created by Mike Sabens on 6/26/16.
//  Copyright © 2016 TheNewThirty. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
let maxNumber = 100
var startingValue: Int = 0
var userEntry: Int = 0
var result: Int = 0

//Outlets
@IBOutlet weak var logo: UIImageView!
@IBOutlet weak var userInput: UITextField!
@IBOutlet weak var playButton: UIButton!
@IBOutlet weak var resultsLabel: UILabel!
@IBOutlet weak var addButton: UIButton!
    
//Actions

@IBAction func playButtonPressed(sender: UIButton) {
    
    if userInput.text != nil && userInput.text != "" {
        
        logo.hidden = true
        userInput.hidden = true
        playButton.hidden = true
        
        resultsLabel.hidden = false
        addButton.hidden = false
        
        userEntry = Int(userInput.text!)!
        
        
    }
}

@IBAction func addButtonPressed(sender: UIButton) {
        result = startingValue + userEntry
        updateResultsLabel()
    if isGameover() {
        restartGame()
    }
    }

func updateResultsLabel() {
        resultsLabel.text = "\(startingValue) + \(userEntry) = \(result)"
        startingValue = startingValue + userEntry
    }
    
func isGameover() -> Bool {
        if result >= maxNumber {
            return true
        } else {
            return false
        }
    }
    
    func restartGame() {
        logo.hidden = false
        userInput.hidden = false
        playButton.hidden = false
        
        resultsLabel.hidden = true
        addButton.hidden = true
        
        startingValue = 0
        result = 0
        resultsLabel.text = "Press Add to Add"
    }

}

