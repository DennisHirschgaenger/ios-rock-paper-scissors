//
//  GamePresenter.swift
//  Rock Paper Scissors
//
//  Created by Dennis Hirschgänger on 03.05.19.
//  Copyright © 2019 hirschgaenger. All rights reserved.
//

import Foundation

protocol GamePresenter {
    
    func prepareView()
    
    func playAttack(_ attack: Attack)
}
