//
//  Muehle.swift
//  Mühle
//
//  Created by Lukas Schramm on 16-07-30.
//  Copyright © 2016 DOR. All rights reserved.
//

import Foundation

class Mill {
    var players = [Player]()
    var field = Field()
    var playersTurn = 1
    
    init(pl1isKI: Bool, pl2isKI: Bool, name1: String, name2: String) {
        players.append(Player(isKI: pl1isKI, name: name1, num: 1))
        players.append(Player(isKI: pl2isKI, name: name2, num: 2))
    }
}
