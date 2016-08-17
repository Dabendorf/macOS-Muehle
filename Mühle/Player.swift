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
    let name : String
    let type : PlayersType
    
    var stoneDepot = 9
    var stonesOnField = 0
    var couldJump: Bool {/*Variable, die sich beim Aufruf selbst aktualisiert*/
        return stonesOnField == 3 && stoneDepot == 0 ? true : false
    }
    
    init(name: String, num: Int, type: PlayersType) {
        self.num = num
        self.name = name
        self.type = type
    }
}

enum PlayersType {
    case Player
    case KI
}
