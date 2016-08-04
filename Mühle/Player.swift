//
//  Player.swift
//  Mühle
//
//  Created by Lukas Schramm on 16-07-30.
//  Copyright © 2016 DOR. All rights reserved.
//

import Foundation

class Player {
    let num : Int
    let isKI : Bool
    let name : String
    let ki : KI?
    
    var stoneDepot = 9
    var stonesOnField = 0
    var couldJump: Bool {
        return stonesOnField == 3 && stoneDepot == 0 ? true : false
    }
    
    init(isKI: Bool, name: String, num: Int) {
        self.num = num
        self.isKI = isKI
        self.name = name
        
        ki = isKI ? KI() : nil
    }
    
    func setStone() {
        if stoneDepot > 0 {
            
        }
    }
}
