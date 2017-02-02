//
//  TDD_DemoUITests.swift
//  TDD-DemoUITests
//
//  Created by Pham Anh on 1/26/17.
//  Copyright © 2017 Pham Anh. All rights reserved.
//

import XCTest

class TDD_DemoUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testTapNumberButtonIncrementsScore() {
        
        let app = XCUIApplication()
        app.buttons["0"].tap()
        
        let newScore = app.buttons["1"].label
        XCTAssertEqual(newScore, "1")
    }
    
    func testTapNumberButtonTwiceIncrementTo2() {
        
        let app = XCUIApplication()
        let numberButton = app.buttons["numberButton"]
        
        numberButton.tap()
        numberButton.tap()
        
        let newScore = numberButton.label
        XCTAssertEqual(newScore, "2")
    }
    
    func testTapFizzButtonIncrementsTo3() {
        let app = XCUIApplication()
        let numberButton = app.buttons["numberButton"]
        let fizzButton = app.buttons["fizzButton"]
        
        numberButton.tap()
        numberButton.tap()
        fizzButton.tap()
        
        let newScore = numberButton.label
        XCTAssertEqual(newScore, "3")
    }
    
    func testTapBuzzButtonIncrementsTo5() {
        
        let app = XCUIApplication()
        let numberButton = app.buttons["numberButton"]
        let fizzButton = app.buttons["fizzButton"]
        let buzzButton = app.buttons["buzzButton"]
        
        numberButton.tap()
        numberButton.tap()
        fizzButton.tap()
        numberButton.tap()
        buzzButton.tap()
        
        let newScore = numberButton.label
        XCTAssertEqual(newScore, "5")
    }
    
    func testTapFizzBuzzButtonIncrementsTo15() {
        
        let app = XCUIApplication()
        let numberButton = app.buttons["numberButton"]
        let fizzButton = app.buttons["fizzButton"]
        let buzzButton = app.buttons["buzzButton"]
        let fizzBuzzButton = app.buttons["fizzBuzzButton"]
        
        numberButton.tap()
        numberButton.tap()
        fizzButton.tap()
        numberButton.tap()
        buzzButton.tap()
        fizzButton.tap()
        numberButton.tap()
        numberButton.tap()
        fizzButton.tap()
        buzzButton.tap()
        numberButton.tap()
        fizzButton.tap()
        numberButton.tap()
        numberButton.tap()
        fizzBuzzButton.tap()
        
        let newScore = numberButton.label
        XCTAssertEqual(newScore, "15")
        
    }
    
    func testTapPlayAgainButtonResetTo0() {
        let app = XCUIApplication()
        let numberButton = app.buttons["numberButton"]
        let resetButton = app.buttons["resetButton"]
        
        numberButton.tap()
        numberButton.tap()
        resetButton.tap()
        
        let resetScore = numberButton.label
        XCTAssertEqual(resetScore, "0")
    }
    
    func testTapWrongButtonResetScoreTo0() {
        let app = XCUIApplication()
        let numberButon = app.buttons["numberButton"]
        let fizzButton = app.buttons["fizzButton"]
        
        numberButon.tap()
        fizzButton.tap()
        
        let newScore = numberButon.label
        XCTAssertEqual(newScore, "0")
    }
}
