//
//  Opponent.swift
//  Rock Paper Scissors
//
//  Created by Dennis Hirschgänger on 03.05.19.
//  Copyright © 2019 hirschgaenger. All rights reserved.
//

import Foundation

protocol Opponent {
    
    /// Requests an attack from the opponent
    /// - Note: Could also be implemented asynchronously to support playing against real opponent via bluetooth
    ///
    /// - Returns: The opponent's attack
    func expectAttack() -> Attack
}
