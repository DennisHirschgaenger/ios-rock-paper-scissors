//
//  GamePresenterImpl.swift
//  Rock Paper Scissors
//
//  Created by Dennis Hirschgänger on 03.05.19.
//  Copyright © 2019 hirschgaenger. All rights reserved.
//

import Foundation

final class GamePresenterImpl: GamePresenter {
    
    private weak var view: GameViewControls?
    
    init(view: GameViewControls) {
        self.view = view
    }
    
    func prepareView() {
        
    }
}
