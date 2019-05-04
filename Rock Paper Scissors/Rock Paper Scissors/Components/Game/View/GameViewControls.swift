//
//  GameViewControls.swift
//  Rock Paper Scissors
//
//  Created by Dennis Hirschgänger on 03.05.19.
//  Copyright © 2019 hirschgaenger. All rights reserved.
//

import Foundation

protocol GameViewControls: AnyObject {
    
    func showScore(forUser userScore: String, forCPU cpuScore: String)
    
    func showResultDialog(title: String, message: String)
}
