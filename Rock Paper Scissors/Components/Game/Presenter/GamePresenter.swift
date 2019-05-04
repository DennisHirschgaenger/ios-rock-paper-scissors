//
//  GamePresenter.swift
//  Rock Paper Scissors
//
//  Created by Dennis Hirschgänger on 03.05.19.
//  Copyright © 2019 hirschgaenger. All rights reserved.
//

import Foundation

protocol GamePresenter {
    
    /// Prepares the view for display
    func prepareView()
    
    /// Plays the given attack
    ///
    /// - Parameter attack: The attack to play
    func playAttack(_ attack: Attack)
}
