//
//  GamePresenterImpl.swift
//  Rock Paper Scissors
//
//  Created by Dennis Hirschgänger on 03.05.19.
//  Copyright © 2019 hirschgaenger. All rights reserved.
//

import Foundation

final class GamePresenterImpl: GamePresenter {
    
    private weak var view: GameViewControls?
    private let opponent: Opponent
    
    private var userScore = 0
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
