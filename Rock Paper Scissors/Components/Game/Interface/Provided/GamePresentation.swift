//
//  GamePresentation.swift
//  Rock Paper Scissors
//
//  Created by Dennis Hirschgänger on 03.05.19.
//  Copyright © 2019 hirschgaenger. All rights reserved.
//

import UIKit

protocol GamePresentation {
    
    /// Returns the game view
    ///
    /// - Returns: The game view
    func prepareGameView() -> UIViewController
}
