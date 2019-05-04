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
    
    /// Creates a new instance of the game view controller
    ///
    /// - Returns: The new instance
    static func makeGameView() -> UIViewController {
        let storyboard = UIStoryboard(name: Constants.storyboardName, bundle: nil)
        guard let viewController = storyboard.instantiateInitialViewController() as? GameViewController else {
            fatalError("Failed to instantiate game view controller!")
        }
        
        viewController.presenter = GamePresenterFactory.makePresenter(view: viewController)
        
        return viewController
    }
    
    /// Creates a new instance of the result dialog
    ///
    /// - Parameters:
    ///   - title: The title of the dialog
    ///   - message: The message of the dialog
    static func makeResultDialog(title: String, message: String) -> UIViewController {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Ok", style: .default)
        alert.addAction(okAction)
        
        return alert
    }
}
