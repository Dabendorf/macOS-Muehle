//
//  ViewController.swift
//  Mühle
//
//  Created by Lukas Schramm on 16-07-30.
//  Copyright © 2016 DOR. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {
    
    private var mill = Mill(pl1isKI: false, pl2isKI: true, name1: "Spieler", name2: "KI")
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override var representedObject: AnyObject? {
        didSet {
        // Update the view, if already loaded.
        }
    }
}
