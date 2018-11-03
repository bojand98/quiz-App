//
//  ViewController2.swift
//  Quiz-App
//
//  Created by Bojan Dimitrijevski on 13/10/18.
//  Copyright © 2018 Bojan Dimitrijevski. All rights reserved.
//

import UIKit


class ViewController2: UIViewController {
    
    @IBOutlet weak var geoButton: UIButton!
    @IBOutlet weak var geoButton2: UIButton!
    
    @IBOutlet weak var historyButton: UIButton!
    @IBOutlet weak var historyButton2: UIButton!
    
    @IBOutlet weak var musicButton: UIButton!
    @IBOutlet weak var musicButton2: UIButton!
    
    @IBOutlet weak var sportButton: UIButton!
    @IBOutlet weak var sportButton2: UIButton!
    
    var quizType: Int?
    @IBAction func quizTypeButtonPressed(_ sender: UIButton) {
        if sender.tag == 1{
            quizType=1
        }
        else if sender.tag == 2{
            quizType=2
        }
        else if sender.tag == 3{
            quizType=3
        }
        else if sender.tag == 4{
            quizType=4
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()


    }
}
