//
//  GameTests.swift
//  TDD-Demo
//
//  Created by Pham Anh on 1/25/17.
//  Copyright © 2017 Pham Anh. All rights reserved.
//

import XCTest
@testable import TDD_Demo

class GameTests: XCTestCase {
    
    let game = Game()
    
    func testGameStartAtZero() {
        XCTAssertTrue(game.score == 0)
    }
    
    func testOnPlayScoreIncremented() {
        game.play(Move.Number)
        XCTAssertTrue(game.score == 1)
    }
    
    func testIfMoveIsRight() {
        game.score = 2
        let response = game.play(Move.Fizz)
        let result = response.right
        XCTAssertEqual(result, true)
    }
    
    func testIfMoveIsWrong() {
        game.score = 1
        let response = game.play(Move.Fizz)
        let result = response.right
        XCTAssertEqual(result, false)
    }
    
    func testIfBuzzMoveRight() {
        game.score = 4
        let response = game.play(Move.Buzz)
        let result = response.right
        XCTAssertEqual(result, true)
    }
    
    func testIfBuzzMoveWrong() {
        game.score = 1
        let response = game.play(Move.Buzz)
        let result = response.right
        XCTAssertEqual(result, false)
    }
    
    func testIfFizzMoveRight() {
        game.score = 5
        let response = game.play(Move.Fizz)
        let result = response.right
        XCTAssertEqual(result, true)
    }
    
    func testIfFizzMoveWrong() {
        game.score = 1
        let response = game.play(Move.Fizz)
        let result = response.right
        XCTAssertEqual(result, false)
    }
    
    func testIfFizzBuzzMoveRight() {
        game.score = 14
        let response = game.play(Move.FizzBuzz)
        let result = response.right
        XCTAssertEqual(result, true)
    }
    
    func testIfFizzBuzzMoveWrong() {
        game.score = 1
        let response = game.play(Move.FizzBuzz)
        let result = response.right
        XCTAssertEqual(result, false)
    }
    
    func testIfMoveWrongScoreNotIncremented() {
        game.score = 1
        game.play(Move.Fizz)
        XCTAssertTrue(game.score == 1)
    }
    
    func testPlayShouldReturnIfMoveRight() {
        let response = game.play(Move.Number)
        XCTAssertNotNil(response.right)
    }
    
    func testPlayShouldReturnNewScore() {
        let response = game.play(Move.Number)
        XCTAssertNotNil(response.score)
    }
}
