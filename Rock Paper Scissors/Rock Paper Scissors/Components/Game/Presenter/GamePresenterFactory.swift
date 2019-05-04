//
//  GamePresenterFactory.swift
//  Rock Paper Scissors
//
//  Created by Dennis Hirschgänger on 03.05.19.
//  Copyright © 2019 hirschgaenger. All rights reserved.
//

import Foundation

final class GamePresenterFactory {
    
    /// Creates a new instance of the game presenter
    ///
    /// - Parameter view: The game view
    /// - Returns: The new instance
    static func makePresenter(view: GameViewControls) -> GamePresenter {
        let opponent = OpponentFactory.makeRandomPickerOpponent()
        let presenter = GamePresenterImpl(view: view, opponent: opponent)
        return presenter
    }
}
