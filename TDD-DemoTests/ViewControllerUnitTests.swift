//
//  ViewControllerUnitTests.swift
//  TDD-Demo
//
//  Created by Pham Anh on 1/26/17.
//  Copyright © 2017 Pham Anh. All rights reserved.
//

import XCTest
@testable import TDD_Demo

class ViewControllerUnitTests: XCTestCase {
    var viewController: ViewController!
    
    override func setUp() {
        super.setUp()
        
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        viewController = storyboard.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        UIApplication.shared.keyWindow!.rootViewController = viewController
    }
    
    func test() {
        XCTAssertTrue(true)
    }
    
    func testMove1IncrementsScore() {
        viewController.play(Move.Number)
        let newScore = viewController.gameScore!
        XCTAssertEqual(newScore, 1)
    }
    
    func testMove2IncrementsScore() {
        viewController.play(Move.Number)
        viewController.play(Move.Number)
        let newScore = viewController.gameScore!
        XCTAssertEqual(newScore, 2)
    }
    
    func testHaveGame() {
        XCTAssertNotNil(viewController.game)
    }
    
    func testFizzIncrementScore() {
        viewController.game?.score = 2
        viewController.play(Move.Fizz)
        
        let newScore = viewController.gameScore!
        XCTAssertEqual(newScore, 3)
    }
    
    func testBuzzIncrementScore() {
        viewController.game?.score = 4
        viewController.play(Move.Buzz)
        
        let newScore = viewController.gameScore!
        XCTAssertEqual(newScore, 5)
    }
    
    func testFizzBuzzIncrementScore() {
        viewController.game?.score = 14
        viewController.play(Move.FizzBuzz)
        
        let newScore = viewController.gameScore!
        XCTAssertEqual(newScore, 15)
    }
    
    func testOnWrongMoveScoreNotIncremented() {
        viewController.play(Move.Fizz)
        
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 0)
    }
}
