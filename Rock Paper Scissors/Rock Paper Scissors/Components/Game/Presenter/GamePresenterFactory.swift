//
//  GamePresenterFactory.swift
//  Rock Paper Scissors
//
//  Created by Dennis Hirschgänger on 03.05.19.
//  Copyright © 2019 hirschgaenger. All rights reserved.
//

import Foundation

final class GamePresenterFactory {
    
    static func makePresenter(view: GameViewControls) -> GamePresenter {
        let opponent = OpponentFactory.makeRandomPickerOpponent()
        let presenter = GamePresenterImpl(view: view, opponent: opponent)
        return presenter
    }
}
