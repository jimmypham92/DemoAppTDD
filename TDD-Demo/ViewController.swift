//
//  ViewController.swift
//  TDD-Demo
//
//  Created by Pham Anh on 1/24/17.
//  Copyright © 2017 Pham Anh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var game: Game?
    var gameScore: Int? {
        didSet {
            guard let unwrappedScore = gameScore else {
                print("gameScore is nil")
                return
            }
            
            numberButton.setTitle("\(unwrappedScore)", for: .normal)
        }
    }
    
    @IBOutlet weak var numberButton: UIButton!
    @IBOutlet weak var fizzButton: UIButton!
    @IBOutlet weak var buzzButton: UIButton!
    @IBOutlet weak var fizzBuzzButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        game = Game()
        
        guard let checkedGame = game else {
            print("Game is nil")
            return
        }
        
        gameScore = checkedGame.score
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func play(_ move: Move){
        guard let existGame = game else {
            print("Game is nil")
            return
        }
        let response = existGame.play(move)
        gameScore = response.score
    }
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        switch sender {
        case numberButton:
            play(Move.Number)
        case fizzButton:
            play(Move.Fizz)
        case buzzButton:
            play(Move.Buzz)
        case fizzBuzzButton:
            play(Move.FizzBuzz)
        default:
            print("Invalid selection")
        }
    }
    
    @IBAction func playAgainTapped(_ sender: UIButton) {
        guard let existGame = game else {
            print("Game is nil")
            return
        }
        
        gameScore = existGame.resetScore()
    }
}
