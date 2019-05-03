//
//  GameViewFactory.swift
//  Rock Paper Scissors
//
//  Created by Dennis Hirschgänger on 03.05.19.
//  Copyright © 2019 hirschgaenger. All rights reserved.
//

import UIKit

private enum Constants {
    
    static let storyboardName = "Game"
}

final class GameViewFactory {
    
    static func makeGameView() -> UIViewController {
        
        let storyboard = UIStoryboard(name: Constants.storyboardName, bundle: nil)
        guard let viewController = storyboard.instantiateInitialViewController() as? GameViewController else {
            fatalError("Failed to instantiate game view controller!")
        }
        
        viewController.presenter = GamePresenterFactory.makePresenter(view: viewController)
        
        return viewController
    }
}
