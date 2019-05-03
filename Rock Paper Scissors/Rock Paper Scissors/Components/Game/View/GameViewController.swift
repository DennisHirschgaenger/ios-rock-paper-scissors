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
    
    @IBOutlet private weak var userScoreLabel: UILabel!
    @IBOutlet private weak var cpuScoreLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter?.prepareView()
    }
    
    @IBAction private func onRockButtonTapped(_ sender: Any) {
        presenter?.playAttack(.rock)
    }
    
    @IBAction private func onPaperButtonTapped(_ sender: Any) {
        presenter?.playAttack(.paper)
    }
    
    @IBAction private func onScissorsButtonTapped(_ sender: Any) {
        presenter?.playAttack(.scissors)
    }
}

extension GameViewController: GameViewControls {
    
    func showScore(forUser userScore: String, forCPU cpuScore: String) {
        userScoreLabel.text = userScore
        cpuScoreLabel.text = cpuScore
    }
}
