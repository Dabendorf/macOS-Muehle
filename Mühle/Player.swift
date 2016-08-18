//
//  Player.swift
//  Mühle
//
//  Created by Lukas Schramm on 16-07-30.
//  Copyright © 2016 DOR. All rights reserved.
//

import Foundation

protocol Player {
    var num : Int {get}
    var name : String {get}
    
    var stoneDepot : Int {get set}
    var stonesOnField : Int {get set}
    var couldJump: Bool {get}
    
    init(name: String, num: Int)
}

class Human : Player {
    var num : Int
    var name : String
    
    var stoneDepot = 9
    var stonesOnField = 0
    var couldJump: Bool {
        return stonesOnField == 3 && stoneDepot == 0 ? true : false
    }
    
    required init(name: String, num: Int) {
        self.num = num
        self.name = name
    }
}

class KI : Player {
    var num : Int
    var name : String
    
    var stoneDepot = 9
    var stonesOnField = 0
    var couldJump: Bool {
        return stonesOnField == 3 && stoneDepot == 0 ? true : false
    }
    
    required init(name: String, num: Int) {
        self.num = num
        self.name = name
    }
}
