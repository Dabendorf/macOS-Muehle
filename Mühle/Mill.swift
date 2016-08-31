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
    var board = Board()
    var playersTurn = 1
    var moves = [Move]()
    
    init(pl1isKI: Bool, pl2isKI: Bool, name1: String, name2: String) {
        if pl1isKI {
            players.append(Human(name: name1, num: 1))
        } else {
            players.append(KI(name: name1, num: 1))
        }
        
        if pl2isKI {
            players.append(Human(name: name2, num: 2))
        } else {
            players.append(KI(name: name1, num: 1))
        }
    }
    
    func move() -> Bool {
        let player = players[playersTurn-1]
        let correctTurn : Bool = true
        if player.stoneDepot > 0 {
            //die setStone Methode auf ein Objekt von Move aufrufen
            //Nutze Rückgabewerte ob der Zug erfolgreich war zum Ändern von correctTurn
        } else {
            //die move Methode auf ein Objekt von Move aufrufen
        }
        
        if correctTurn {
            changePlayersNum()
            if players[playersTurn-1] is KI {
                //Do KI Turn, wie auch immer
            }
        }
        
        return true
    }
    
    func changePlayersNum() {
        playersTurn = playersTurn==1 ? 2 : 1
    }
}
