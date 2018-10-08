//
//  main.swift
//  quizApp-cmdLine
//
//  Created by Bojan Dimitrijevski on 6/10/18.
//  Copyright © 2018 Bojan Dimitrijevski. All rights reserved.
//

import Foundation

class Prasanje{
    var prasanje:String = ""
    var odgovor1:String = ""
    var odgovor2:String = ""
    var odgovor3:String = ""
    var odgovor4:String = ""
    var tocenOdg:String = ""
    var moreInfo:String = ""
    var slika:String = ""
    
    init(pras:String,odg1:String,odg2:String,odg3:String,odg4:String,tocen:String,morein:String,sl:String) {
        prasanje=pras
        odgovor1=odg1
        odgovor2=odg2
        odgovor3=odg3
        odgovor4=odg4
        tocenOdg=tocen
        moreInfo=morein
        slika=sl
    }
    func printaj() -> String {
        var s:String = ""
        s += prasanje + "\n"
        s += tocenOdg
        return s
    }
}

var prasanje:String = ""
var odgovor1:String = ""
var odgovor2:String = ""
var odgovor3:String = ""
var odgovor4:String = ""
var tocenOdg:String = ""
var moreInfo:String = ""
var slika:String = ""

var prasanjaNiza:[Prasanje] = []

for i in 1...10{
    prasanje = readLine()!
    odgovor1 = readLine()!
    odgovor2 = readLine()!
    odgovor3 = readLine()!
    odgovor4 = readLine()!
    tocenOdg = readLine()!
    moreInfo = readLine()!
    slika = readLine()!
    
    var pr:Prasanje = Prasanje(pras: prasanje, odg1: odgovor1, odg2: odgovor2, odg3: odgovor3, odg4: odgovor4, tocen: tocenOdg, morein: moreInfo, sl: slika)
    
    prasanjaNiza.append(pr)
}

for i in 0...prasanjaNiza.count{
    print(prasanjaNiza[i].prasanje)
}
