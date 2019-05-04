//
//  AppWorkflowFactory.swift
//  Rock Paper Scissors
//
//  Created by Dennis Hirschgänger on 03.05.19.
//  Copyright © 2019 hirschgaenger. All rights reserved.
//

import UIKit

final class AppWorkflowFactory {
    
    /// Creates a new instance of the app workflow
    ///
    /// - Parameter window: The main window
    /// - Returns: The new instance
    static func makeAppWorkflow(window: UIWindow) -> AppWorkflow {
        let workflow = AppWorkflowImpl(window: window)
        
        return workflow
    }
}
