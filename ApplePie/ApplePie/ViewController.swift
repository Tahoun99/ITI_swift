//
//  ViewController.swift
//  ApplePie
//
//  Created by Ahmad Mohsen on 01/08/2024.
//

import UIKit

class ViewController: UIViewController {
    
    var listOfWords = ["buccaneer" , "swift" , "glorious", "incandescent", "bug", "program"]
    
    let incorrectMovesAllowed = 7
    
    var totalWins = 0 { didSet{ newRound()}}
    
    var totalLosses = 0 {didSet { newRound()}}
    
    @IBOutlet var treeImageView: UIImageView!
    
    @IBOutlet var correctWordLabel: UILabel!
    
    @IBOutlet var scoreLabel: UILabel!
    
    @IBOutlet var letterButtons: [UIButton]!
    
    @IBAction func letterButtonPressed(_ sender: UIButton) {
        sender.isEnabled = false
        let letterSting = sender.configuration!.title!
        let letter = Character(letterSting.lowercased())
        currentGame.playerGuessed(letter: letter)
        updateGameState()
    }
    
    func updateGameState() {
        if currentGame.incorrectMovesRemaining == 0 {
            totalLosses += 1
        } else if currentGame.word == currentGame.formattedWord {
            totalWins += 1
        } else {
            updateUI()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        newRound()
    }
    
    var currentGame : Game!
    
    func newRound() {
        if !listOfWords.isEmpty {
            let newWord = listOfWords.removeFirst()
            currentGame = Game(word: newWord, incorrectMovesRemaining: incorrectMovesAllowed, guessedLetters: [])
            enableLetters(enable: true)
            updateUI()
        } else {
            enableLetters(enable: false)
        }
    }
    
    func enableLetters(enable: Bool) {
        for button in letterButtons {
            button.isEnabled = enable
        }
    }

    func updateUI() {
        var letters = [String]()
        for letter in currentGame.formattedWord {
            letters.append(String(letter))
        }
        let wordWithSpaces = letters.joined(separator: " ")
        correctWordLabel.text = wordWithSpaces
        
        scoreLabel.text = "Wins: \(totalWins), Losses: \(totalLosses)"
        treeImageView.image = UIImage(named: "Tree \(currentGame.incorrectMovesRemaining)")
    }
    

}

