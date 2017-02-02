//
//  Brain.swift
//  TDD-Demo
//
//  Created by Pham Anh on 1/24/17.
//  Copyright © 2017 Pham Anh. All rights reserved.
//

import UIKit

class Brain: NSObject {
    
    func isDivisibleByThree(_ number: Int) -> Bool {
        return number % 3 == 0
    }
    
    func isDivisibleByFive(_ number: Int) -> Bool {
        return number % 5 == 0
    }
    
    func isDivisibleByFifteen(_ number: Int) -> Bool {
        return number % 15 == 0
    }
    
    func check(_ number: Int) -> Move {
        if isDivisibleByFifteen(number) {
            return Move.FizzBuzz
        } else if isDivisibleByThree(number) {
            return Move.Fizz
        } else if isDivisibleByFive(number){
            return Move.Buzz
        } else {
            return Move.Number
        }
    }
    
}
