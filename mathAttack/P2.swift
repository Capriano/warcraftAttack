//
//  P2.swift
//  mathAttack
//
//  Created by Home on 2016-05-07.
//  Copyright © 2016 Farshid Palad. All rights reserved.
//

import Foundation

class P2: Character {
    
    private var _name = "Human Guard"
    
    var name: String {
        get {
            return _name
        }
    }
    
    convenience init(name: String, hp: Int, attackPower: Int) {
        self.init(startingHp: hp, startingAttackPower: attackPower)
        _name = name
    }
}