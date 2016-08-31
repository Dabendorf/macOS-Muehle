//
//  Field.swift
//  Mühle
//
//  Created by Lukas Schramm on 16-08-04.
//  Copyright © 2016 DOR. All rights reserved.
//

import Foundation

class Board {
    var boardArr = [Field]()
    
    init() {
        for d in 0...2 {
            for x in 0...2 {
                for y in 0...2 {
                    if !(x==1 && y==1) {
                        boardArr.append(Field(d,x,y))
                    }
                }
            }
        }
        
        for fieldA in boardArr {
            for fieldB in boardArr {
                if fieldA != fieldB {
                    if fieldA.pos.d == fieldB.pos.d && fieldA.pos.x == fieldB.pos.x && abs(fieldA.pos.y - fieldB.pos.y)==1 {
                        fieldA.neighbours.append(fieldB)
                    }
                    if fieldA.pos.d == fieldB.pos.d && fieldA.pos.y == fieldB.pos.y && abs(fieldA.pos.x - fieldB.pos.x)==1 {
                        fieldA.neighbours.append(fieldB)
                    }
                    if abs(fieldA.pos.d - fieldB.pos.d)==1 && fieldA.pos.x == fieldB.pos.x
                        && fieldA.pos.y == fieldB.pos.y && abs(fieldA.pos.x - fieldA.pos.y)==1 {
                        fieldA.neighbours.append(fieldB)
                    }
                }
            }
        }
    }
    
    func printBoard() {
        print(getBoardString())
    }
    
    func getBoardString() -> String {
        let str0 = "\(boardArr.getElement(000))-------\(boardArr.getElement(010))-------\(boardArr.getElement(020))\n"
        let str1 = "|       |       |\n"
        let str2 = "| \(boardArr.getElement(100))-----\(boardArr.getElement(110))-----\(boardArr.getElement(120)) |\n"
        let str3 = "| |     |     | |\n"
        let str4 = "| | \(boardArr.getElement(200))---\(boardArr.getElement(210))---\(boardArr.getElement(220)) | |\n"
        let str5 = "| | |       | | |\n"
        let str6 = "\(boardArr.getElement(001))-\(boardArr.getElement(101))-\(boardArr.getElement(201))       \(boardArr.getElement(021))-\(boardArr.getElement(121))-\(boardArr.getElement(221))\n"
        let str7 = "| | |       | | |\n"
        let str8 = "| | \(boardArr.getElement(202))---\(boardArr.getElement(212))---\(boardArr.getElement(222)) | |\n"
        let str9 = "| |     |     | |\n"
        let str10 = "| \(boardArr.getElement(102))-----\(boardArr.getElement(112))-----\(boardArr.getElement(122)) |\n"
        let str11 = "|       |       |\n"
        let str12 = "\(boardArr.getElement(002))-------\(boardArr.getElement(012))-------\(boardArr.getElement(022))\n"
        
        return str0 + str1 + str2 + str3 + str4 + str5 + str6 + str7 + str8 + str9 + str10 + str11 + str12
    }
}

class Pos3D : Hashable {
    let d : Int
    let x : Int
    let y : Int
    var hashValue: Int {
        return 100*self.d+10*self.x+self.y
    }
    
    init(_ d: Int, _ x: Int, _ y: Int) {
        self.d = d
        self.x = x
        self.y = y
    }
}

class Field : Hashable {
    let pos : Pos3D
    var neighbours = [Field]()
    var hashValue: Int {
        return pos.hashValue
    }
    
    init(_ d: Int, _ x: Int, _ y: Int) {
        pos = Pos3D(d, x, y)
    }
    
    func isNeighbour(a: Field, b: Field) -> Bool {
        return a.neighbours.contains(b)
    }
}

func ==(lhs: Pos3D, rhs: Pos3D) -> Bool {
    return lhs.hashValue == rhs.hashValue
}

func ==(lhs: Field, rhs: Field) -> Bool {
    return lhs.hashValue == rhs.hashValue
}

extension Array where Element: Field {
    func getElement(_ hashValue: Int) -> Field {
        return self.filter{$0.hashValue == hashValue}.first!
    }
    
    func getElement(_ pos: Pos3D) -> Field {
        return self.filter{$0.hashValue == pos.hashValue}.first!
    }
}
