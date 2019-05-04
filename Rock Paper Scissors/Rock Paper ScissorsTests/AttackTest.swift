//
//  AttackTest.swift
//  Rock Paper ScissorsTests
//
//  Created by Dennis Hirschgänger on 04.05.19.
//  Copyright © 2019 hirschgaenger. All rights reserved.
//

import XCTest
@testable import Rock_Paper_Scissors

class AttackTest: XCTestCase {
    
    func test_RockBeatsScissors() {
        XCTAssertTrue(Attack.scissors < Attack.rock)
    }
    
    func test_PaperBeatsRock() {
        XCTAssertTrue(Attack.rock < Attack.paper)
    }
    
    func test_ScissorsBeatPaper() {
        XCTAssertTrue(Attack.paper < Attack.scissors)
    }
}
