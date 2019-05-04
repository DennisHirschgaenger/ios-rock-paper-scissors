//
//  Attack.swift
//  Rock Paper Scissors
//
//  Created by Dennis Hirschgänger on 03.05.19.
//  Copyright © 2019 hirschgaenger. All rights reserved.
//

import Foundation

enum Attack: String, CaseIterable {
    case rock = "Stein"
    case paper = "Papier"
    case scissors = "Schere"
}

extension Attack: Comparable {
    
    static func < (lhs: Attack, rhs: Attack) -> Bool {
        switch (lhs, rhs) {
        case (.rock, .paper):
            return true
        case (.scissors, .rock):
            return true
        case (.paper, .scissors):
            return true
        default:
            return false
        }
    }
}
