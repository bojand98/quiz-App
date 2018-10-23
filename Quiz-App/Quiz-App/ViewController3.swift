//
//  ViewController3.swift
//  Quiz-App
//
//  Created by Bojan Dimitrijevski on 23/10/18.
//  Copyright © 2018 Bojan Dimitrijevski. All rights reserved.
//

import UIKit

class ViewController3: UIViewController {

    
    @IBOutlet weak var questionCounterLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var mainImage: UIImageView!
    
    //outlets for Buttons bellow
    
    @IBOutlet weak var optionA: UIButton!
    @IBOutlet weak var optionB: UIButton!
    @IBOutlet weak var optionC: UIButton!
    @IBOutlet weak var optionD: UIButton!
    
    //actions bellow this
    
    @IBAction func answerPressed(_ sender: UIButton) {
        if sender.tag == 1 {
            print("option A choosed")
        }
        else if sender.tag == 2 {
            print("option B choosed")
        }
        else if sender.tag == 3 {
            print("option C choosed")
        }
        else if sender.tag == 4 {
            print("option D choosed")
        }
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    

}
