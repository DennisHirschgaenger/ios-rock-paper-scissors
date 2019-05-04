//
//  GameFactory.swift
//  Rock Paper Scissors
//
//  Created by Dennis Hirschgänger on 03.05.19.
//  Copyright © 2019 hirschgaenger. All rights reserved.
//

import Foundation

final class GameFactory {
    
    /// Creates a new instance of the workflow of the game component
    ///
    /// - Returns: The new instance
    static func makeGameWorkflow() -> GamePresentation {
        let workflow = GameWorkflowFactory.makeWorkflow()
        return workflow
    }
}
