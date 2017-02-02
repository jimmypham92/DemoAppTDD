//
//  Game.swift
//  TDD-Demo
//
//  Created by Pham Anh on 1/25/17.
//  Copyright © 2017 Pham Anh. All rights reserved.
//

import UIKit

class Game: NSObject {
    var score: Int
    let brain = Brain()
    
    override init() {
        score = 0
        super.init()
    }
    
    func play(_ move: Move) -> (right: Bool, score: Int) {
        let result = brain.check(score + 1)
        if result == move {
            score += 1
            return (true, score)
        } else {
            score = 0
            return (false, score)
        }
    }
    
    func resetScore() -> Int{
        score = 0
        return score
    }
    
}
