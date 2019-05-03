//
//  AppWorkflowImpl.swift
//  Rock Paper Scissors
//
//  Created by Dennis Hirschgänger on 03.05.19.
//  Copyright © 2019 hirschgaenger. All rights reserved.
//

import UIKit

final class AppWorkflowImpl: AppWorkflow {
    
    private let window: UIWindow
    
    init(window: UIWindow) {
        self.window = window
    }
    
    func start() {
        let viewController = UIViewController()
        viewController.view.backgroundColor = .magenta
        window.rootViewController = viewController
    }
}
