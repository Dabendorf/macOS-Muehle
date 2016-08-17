//
//  Move.swift
//  Mühle
//
//  Created by Lukas Schramm on 16-08-17.
//  Copyright © 2016 DOR. All rights reserved.
//

import Foundation

class Move {
    let possibleTurns : [(Int, Int, Int, Int)] = [(0,0,1,0), (0,0,0,3), (1,0,0,0), (1,0,2,0), (1,0,1,1)] //viele weitere, die ich noch ergaenze, wenn es nicht sinnvollere Ideen gibt!
    
    func setStone(player: Player, field: [[Int]], location: (Int, Int)) -> Bool {//Returns correctness
        if field[location.0][location.1] == 0 && player.stoneDepot > 0 {
            return true
        } else {
            return false
        }
    }
    
    func move(player: Player, field: [[Int]], locationOld: (Int, Int), locationNew: (Int, Int)) -> Bool {
        if field[locationNew.0][locationNew.1] == 0 && contains(a: possibleTurns, v: (locationOld.0, locationOld.1, locationNew.0, locationNew.1)) {
            return true
        } else {
            return false
        }
    }
    
    func contains(a:[(Int, Int, Int, Int)], v:(Int,Int, Int, Int)) -> Bool { //Hilfsmethode zum Vergleichen von Tupeln
        let (c1, c2, c3, c4) = v
        for (v1, v2, v3, v4) in a { if v1 == c1 && v2 == c2 && v3 == c3 && v4 == c4 { return true } }
        return false
    }
}
