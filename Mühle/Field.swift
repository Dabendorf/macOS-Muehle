//
//  Field.swift
//  Mühle
//
//  Created by Lukas Schramm on 16-08-04.
//  Copyright © 2016 DOR. All rights reserved.
//

import Foundation

class Field {
    var fields = Array(repeating: Array(repeating: 0, count: 8), count: 3)
    
    init() {
        printBoard()
    }
    
    func printBoard() {
        print("\(fields[0][0])-------\(fields[1][0])-------\(fields[2][0])")
        print("|       |       |")
        print("| \(fields[0][1])-----\(fields[1][1])-----\(fields[2][1]) |")
        print("| |     |     | |")
        print("| | \(fields[0][2])---\(fields[1][2])---\(fields[2][2]) | |")
        print("| | |       | | |")
        print("\(fields[0][3])-\(fields[1][3])-\(fields[2][3])       \(fields[0][4])-\(fields[1][4])-\(fields[2][4])")
        print("| | |       | | |")
        print("| | \(fields[0][5])---\(fields[1][5])---\(fields[2][5]) | |")
        print("| |     |     | |")
        print("| \(fields[0][6])-----\(fields[1][6])-----\(fields[2][6]) |")
        print("|       |       |")
        print("\(fields[0][7])-------\(fields[1][7])-------\(fields[2][7])")
    }
}
