//
//  ViewController2.swift
//  Quiz-App
//
//  Created by Bojan Dimitrijevski on 13/10/18.
//  Copyright © 2018 Bojan Dimitrijevski. All rights reserved.
//

import UIKit

class Prasanje{
    var prasanje: String = ""
    var odgovor1: String = ""
    var odgovor2: String = ""
    var odgovor3: String = ""
    var odgovor4: String = ""
    var tocenOdg: String = ""
    var moreInfo: String = ""
    var slika: String = ""
    
    init(pras:String, odg1:String,odg2:String,odg3:String,odg4:String,tocen:String,moreinfo:String,sl:String) {
        prasanje=pras
        odgovor1=odg1
        odgovor2=odg2
        odgovor3=odg3
        odgovor4=odg4
        tocenOdg=tocen
        moreInfo=moreinfo
        slika=sl
    }
    
}


class ViewController2: UIViewController {
    
//    var txtFile: String?
//    var prasanjaNiza:[Prasanje] = []
//    var momentalnoPrasanje:Prasanje
    override func viewDidLoad() {
        super.viewDidLoad()

//        if let filePath = Bundle.main.path(forResource: "QuizApp-SportsCatQ&A", ofType: "txt"){
//            do {
//                let contents = try String(contentsOfFile: filePath)
//                print(contents)
//                let lines = contents.split(separator: "\n")
//                var counter:Int = 0
//                while counter < lines.count {
//                    let prasanje = lines[counter]
//                    let odgovor1 = lines[counter+1]
//                    let odgovor2 = lines[counter+1]
//                    let odgovor3 = lines[counter+1]
//                    let odgovor4 = lines[counter+1]
//                    let tocenOdg = lines[counter+1]
//
//
//
//                    counter += 8
//                }
//
//            }catch{
//
//            }
//        }

//    func refresh(){
//
//    }
    }
}
