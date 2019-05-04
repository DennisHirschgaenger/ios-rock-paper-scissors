//
//  OpponentFactory.swift
//  Rock Paper Scissors
//
//  Created by Dennis Hirschgänger on 04.05.19.
//  Copyright © 2019 hirschgaenger. All rights reserved.
//

import Foundation

final class OpponentFactory {
    
    /// Creates a new instance of the random picker opponent
    ///
    /// - Returns: The new instance
    static func makeRandomPickerOpponent() -> Opponent {
        let opponent = RandomPickerOpponent()
        return opponent
    }
}
