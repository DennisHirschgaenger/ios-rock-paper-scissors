//
//  GameWorkflowFactory.swift
//  Rock Paper Scissors
//
//  Created by Dennis Hirschgänger on 03.05.19.
//  Copyright © 2019 hirschgaenger. All rights reserved.
//

import Foundation

final class GameWorkflowFactory {
    
    /// Creates a new instance of the game workflow
    ///
    /// - Returns: The new instance
    static func makeWorkflow() -> GameWorkflow {
        let workflow = GameWorkflowImpl()
        return workflow
    }
}
