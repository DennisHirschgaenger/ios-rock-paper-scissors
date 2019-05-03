//
//  GameViewController.swift
//  Rock Paper Scissors
//
//  Created by Dennis Hirschgänger on 03.05.19.
//  Copyright © 2019 hirschgaenger. All rights reserved.
//

import UIKit

final class GameViewController: UIViewController {
    
    var presenter: GamePresenter?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        presenter?.prepareView()
    }
}

extension GameViewController: GameViewControls {
    
}
