//
//  ViewController.swift
//  Quiz-App
//
//  Created by Bojan Dimitrijevski on 25/9/18.
//  Copyright © 2018 Bojan Dimitrijevski. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,UITextFieldDelegate{
    
    @IBOutlet weak var startButton: UIButton!
    @IBOutlet weak var scoreButton: UIButton!
    @IBOutlet weak var whoisplayingLabel: UILabel!
    
    @IBOutlet weak var name: UITextField!
    
   
    
    var prom:String?
    override func viewDidLoad() {
        super.viewDidLoad()
        let newLayer = CAGradientLayer()
        newLayer.colors = [UIColor.clear.cgColor, UIColor.clear.cgColor]
        newLayer.frame = view.frame
        view.layer.insertSublayer(newLayer, at: 0)
        
        startButton.layer.cornerRadius = 10
        scoreButton.layer.cornerRadius = 10
        whoisplayingLabel.layer.masksToBounds = true
        whoisplayingLabel.layer.cornerRadius = 10
    }
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if segue.identifier == "start"{
//            if let scoreController = segue.destination as? ViewControllerScore4{
//                let ime:String?
//                if (name.text != nil){
//                    ime = String(name.text!)
//                    scoreController.nameAndOutcomeLabel.text = ime
//                }
//                
//            }
//        }
//    }

}

