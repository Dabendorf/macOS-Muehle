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
    
    init(pl1isKI: Bool, pl2isKI: Bool, name1: String, name2: String) {
        if pl1isKI {
            players.append(Player(name: name1, num: 1, type: .Player))
        } else {
            players.append(Player(name: name1, num: 1, type: .KI))
        }
        
        if pl2isKI {
            players.append(Player(name: name2, num: 2, type: .Player))
        } else {
            players.append(Player(name: name1, num: 1, type: .KI))
        }
    }
    
    func move() {
        let player = players[playersTurn]
        let correctTurn : Bool = true
        if player.stoneDepot > 0 {
            //die setStone Methode auf ein Objekt von Move aufrufen
            //Nutze Rückgabewerte ob der Zug erfolgreich war zum Ändern von correctTurn
        } else {
            //die move Methode auf ein Objekt von Move aufrufen
        }
        
        if correctTurn {
            changePlayersNum()
            if players[playersTurn].type == PlayersType.KI {
                //Do KI Turn, wie auch immer
            }
        }
    }
    
    func changePlayersNum() {
        playersTurn = playersTurn==1 ? 2 : 1
    }
}
