//
//  ViewController.swift
//  mathAttack
//
//  Created by Home on 2016-05-07.
//  Copyright © 2016 Farshid Palad. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var restartGameLabel: UILabel!
    @IBOutlet weak var yesButton: UIButton!
    
    @IBOutlet weak var P1HPLabel: UILabel!
    @IBOutlet weak var P2HPLabel: UILabel!

    @IBOutlet weak var infoLabel: UILabel!
    
    @IBOutlet weak var P1Image: UIImageView!
    
    @IBOutlet weak var P2Image: UIImageView!
    
    @IBOutlet weak var P1AttackButton: UIButton!
    
    @IBOutlet weak var P2AttackButton: UIButton!
    
    var player1: P1!
    var player2: P2!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        gameBegin()
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func P1AttackButtonPressed(sender: AnyObject) {
        player2.attempAttack(player1.attackPower)
        infoLabel.text = "OrcGrunt attacked HumanGuard for \(player1.attackPower) HP"
        P2HPLabel.text = "\(player2.hp) HP"
        
        if !player2.isAlive {
            P2HPLabel.text = "0 HP"
            P2Image.hidden = true
            infoLabel.text = "OrcGrunt KILLED HumanGuard!"
            restartGame()
        }
    }

    @IBAction func P2AttackButtonPressed(sender: AnyObject) {
        player1.attempAttack(player2.attackPower)
        infoLabel.text = "HumanGuard attacked OrcGrunt for \(player2.attackPower) HP"
        P1HPLabel.text = "\(player1.hp) HP"
        
        if !player1.isAlive {
            P1HPLabel.text = "0 HP"
            P1Image.hidden = true
            infoLabel.text = "HumanGuard KILLED OrcGrunt!"
            restartGame()
        }
    }
    
    @IBAction func yesButtonPressed(sender: AnyObject) {
        gameBegin()
    }
    
    func restartGame() {
        restartGameLabel.hidden = false
        yesButton.hidden = false
        P1AttackButton.hidden = true
        P2AttackButton.hidden = true
    }
    
    func gameBegin() {
        restartGameLabel.hidden = true
        yesButton.hidden = true
        P1AttackButton.hidden = false
        P2AttackButton.hidden = false
        P1Image.hidden = false
        P2Image.hidden = false
        
        player1 = P1(name: "OrcGrunt", hp: 130, attackPower: 15)
        P1HPLabel.text = "\(player1.hp) HP"
        
        player2 = P2(name: "HumanGuard", hp: 115, attackPower: 25)
        P2HPLabel.text = "\(player2.hp) HP"
        
    }
}

