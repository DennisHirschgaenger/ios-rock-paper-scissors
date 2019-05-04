//
//  GameViewControls.swift
//  Rock Paper Scissors
//
//  Created by Dennis Hirschgänger on 03.05.19.
//  Copyright © 2019 hirschgaenger. All rights reserved.
//

import Foundation

protocol GameViewControls: AnyObject {
    
    /// Shows the given score
    ///
    /// - Parameters:
    ///   - userScore: The user's score
    ///   - cpuScore: The CPU's score
    func showScore(forUser userScore: String, forCPU cpuScore: String)
    
    /// Shows the result dialog with the given parameters
    ///
    /// - Parameters:
    ///   - title: The title of the dialog
    ///   - message: The message of the dialog
    func showResultDialog(title: String, message: String)
}
