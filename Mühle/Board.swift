//
//  Field.swift
//  Mühle
//
//  Created by Lukas Schramm on 16-08-04.
//  Copyright © 2016 DOR. All rights reserved.
//

import Foundation

class Board {
    var field = Array(repeating: Array(repeating: 0, count: 8), count: 3) //0==empty, 1/2 -> Player 1/2
    
    init() {
        printBoard()
    }
    
    func printBoard() {
        print("\(field[0][0])-------\(field[1][0])-------\(field[2][0])")
        print("|       |       |")
        print("| \(field[0][1])-----\(field[1][1])-----\(field[2][1]) |")
        print("| |     |     | |")
        print("| | \(field[0][2])---\(field[1][2])---\(field[2][2]) | |")
        print("| | |       | | |")
        print("\(field[0][3])-\(field[1][3])-\(field[2][3])       \(field[0][4])-\(field[1][4])-\(field[2][4])")
        print("| | |       | | |")
        print("| | \(field[0][5])---\(field[1][5])---\(field[2][5]) | |")
        print("| |     |     | |")
        print("| \(field[0][6])-----\(field[1][6])-----\(field[2][6]) |")
        print("|       |       |")
        print("\(field[0][7])-------\(field[1][7])-------\(field[2][7])")
    }
}
