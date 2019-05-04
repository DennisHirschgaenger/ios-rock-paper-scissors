//
//  RandomPickerOpponent.swift
//  Rock Paper Scissors
//
//  Created by Dennis Hirschgänger on 03.05.19.
//  Copyright © 2019 hirschgaenger. All rights reserved.
//

import Foundation

final class RandomPickerOpponent: Opponent {
    
    func expectAttack() -> Attack {
        guard let attack = Attack.allCases.randomElement() else {
            fatalError("Failed to draw attack")
        }
        return attack
    }
}
