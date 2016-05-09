//
//  Character.swift
//  mathAttack
//
//  Created by Home on 2016-05-07.
//  Copyright © 2016 Farshid Palad. All rights reserved.
//

import Foundation

class Character {
    private var _hp: Int = 100
    private var _attackPower: Int = 10
    
    var attackPower: Int {
        get {
            return _attackPower
        }
    }
    
    var hp: Int {
        get {
            return _hp
        }
    }
    
    var isAlive: Bool {
        get {
            if hp <= 0 {
                return false
            } else {
                return true
            }
        }
    }
    
    init (startingHp: Int, startingAttackPower: Int) {
        self._hp = startingHp
        self._attackPower = startingAttackPower
    }
    
    func attempAttack(attackPower: Int) -> Bool {
        self._hp = self._hp - attackPower
        return true
    }
}