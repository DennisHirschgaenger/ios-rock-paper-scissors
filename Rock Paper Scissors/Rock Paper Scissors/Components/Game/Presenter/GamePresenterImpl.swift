//
//  GamePresenterImpl.swift
//  Rock Paper Scissors
//
//  Created by Dennis Hirschgänger on 03.05.19.
//  Copyright © 2019 hirschgaenger. All rights reserved.
//

import Foundation

final class GamePresenterImpl: GamePresenter {
    
    /// Handles view output events
    private weak var view: GameViewControls?
    
    /// The opponent to play against
    private let opponent: Opponent
    
    /// The user's current score
    private var userScore = 0
    
    /// The CPU's current score
    private var cpuScore = 0
    
    init(view: GameViewControls, opponent: Opponent) {
        self.view = view
        self.opponent = opponent
    }
    
    func prepareView() {
        view?.showScore(forUser: String(userScore), forCPU: String(cpuScore))
    }
    
    func playAttack(_ attack: Attack) {
        let opponentAttack = opponent.expectAttack()
        if attack < opponentAttack {
            cpuScore += 1
            view?.showResultDialog(title: "Du verlierst", message: "\(opponentAttack.rawValue) besiegt \(attack.rawValue).")
        } else if opponentAttack < attack {
            userScore += 1
            view?.showResultDialog(title: "Du gewinnst", message: "\(attack.rawValue) besiegt \(opponentAttack.rawValue).")
        } else {
            view?.showResultDialog(title: "Unentschieden", message: "Beide haben \(attack.rawValue) gewählt.")
        }
        view?.showScore(forUser: String(userScore), forCPU: String(cpuScore))
    }
}
