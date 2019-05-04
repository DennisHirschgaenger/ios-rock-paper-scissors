//
//  GamePresenterTest.swift
//  Rock Paper ScissorsTests
//
//  Created by Dennis Hirschgänger on 04.05.19.
//  Copyright © 2019 hirschgaenger. All rights reserved.
//

import XCTest
@testable import Rock_Paper_Scissors

class GamePresenterTest: XCTestCase {
    
    private var sut: GamePresenterImpl!
    private var view: MockGameViewControls!
    private var opponent: MockOpponent!
    
    override func setUp() {
        super.setUp()
        
        view = MockGameViewControls()
        opponent = MockOpponent()
        sut = GamePresenterImpl(view: view, opponent: opponent)
    }

    override func tearDown() {
        view = nil
        opponent = nil
        sut = nil
        
        super.tearDown()
    }
    
    func test_PrepareView_ShowsInitialScore() {
        sut.prepareView()
        XCTAssertTrue(view.showScoreWasCalled)
    }
    
    func test_PlayAttack_ShowsResult() {
        sut.playAttack(.rock)
        XCTAssertNotNil(view.resultDialogTitle)
    }
    
    func test_PlayAttack_UpdatesScore() {
        sut.playAttack(.scissors)
        XCTAssertTrue(view.showScoreWasCalled)
    }
    
    func test_PlayAttack_ShowsCorrectDialogForWinningUser() {
        opponent.attack = .rock
        sut.playAttack(.paper)
        XCTAssertEqual(view.resultDialogTitle, "Du gewinnst")
    }
    
    func test_PlayAttack_ShowsCorrectDialogForWinningCPU() {
        opponent.attack = .rock
        sut.playAttack(.scissors)
        XCTAssertEqual(view.resultDialogTitle, "Du verlierst")
    }
    
    func test_PlayAttack_ShowsCorrectDialogForDraw() {
        opponent.attack = .rock
        sut.playAttack(.rock)
        XCTAssertEqual(view.resultDialogTitle, "Unentschieden")
    }
}

private final class MockGameViewControls: GameViewControls {
    
    var showScoreWasCalled = false
    var resultDialogTitle: String?
    
    func showScore(forUser userScore: String, forCPU cpuScore: String) {
        showScoreWasCalled = true
    }
    
    func showResultDialog(title: String, message: String) {
        resultDialogTitle = title
    }
}

private final class MockOpponent: Opponent {
    
    var attack: Attack = .rock
    
    func expectAttack() -> Attack {
        return attack
    }
}
