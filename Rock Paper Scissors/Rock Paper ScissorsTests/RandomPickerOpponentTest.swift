//
//  RandomPickerOpponentTest.swift
//  Rock Paper ScissorsTests
//
//  Created by Dennis Hirschgänger on 04.05.19.
//  Copyright © 2019 hirschgaenger. All rights reserved.
//

import XCTest
@testable import Rock_Paper_Scissors

class RandomPickerOpponentTest: XCTestCase {
    
    private var sut: RandomPickerOpponent!
    
    override func setUp() {
        super.setUp()
        
        sut = RandomPickerOpponent()
    }

    override func tearDown() {
        sut = nil
        
        super.tearDown()
    }
    
    func test_ExpectAttack_ReturnsRandomAttack() {
        let totalTests = 1000
        
        var rockCount = 0
        var paperCount = 0
        var scissorsCount = 0
        
        (0..<totalTests).forEach { _ in
            let attack = sut.expectAttack()
            
            switch attack {
            case .rock:
                rockCount += 1
            case .paper:
                paperCount += 1
            case .scissors:
                scissorsCount += 1
            }
        }
        
        let expectedRelativeCount = Double(1)/Double(3)
        let accuracy = 0.2 * expectedRelativeCount
        XCTAssertEqual(Double(rockCount) / Double(totalTests), expectedRelativeCount, accuracy: accuracy)
        XCTAssertEqual(Double(paperCount) / Double(totalTests), expectedRelativeCount, accuracy: accuracy)
        XCTAssertEqual(Double(scissorsCount) / Double(totalTests), expectedRelativeCount, accuracy: accuracy)
    }
}
