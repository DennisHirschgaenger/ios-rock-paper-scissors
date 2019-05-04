//
//  GameWorkflowImpl.swift
//  Rock Paper Scissors
//
//  Created by Dennis Hirschgänger on 03.05.19.
//  Copyright © 2019 hirschgaenger. All rights reserved.
//

import UIKit

final class GameWorkflowImpl: GameWorkflow {
    
    func prepareGameView() -> UIViewController {
        let viewController = GameViewFactory.makeGameView()
        return viewController
    }
}
