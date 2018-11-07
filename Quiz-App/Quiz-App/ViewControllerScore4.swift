//
//  ViewControllerScore4.swift
//  Quiz-App
//
//  Created by Bojan Dimitrijevski on 30/10/18.
//  Copyright © 2018 Bojan Dimitrijevski. All rights reserved.
//

import UIKit

class ViewControllerScore4: UIViewController {

    @IBOutlet weak var nameAndOutcomeLabel: UILabel!
    @IBOutlet weak var outcomeImage: UIImageView!
    @IBOutlet weak var totalScoreLabel: UILabel!
    
   var finalScore:Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        totalScoreLabel.text = "Your score is: " + String(finalScore!) + "/100"
        // Do any additional setup after loading the view.
    }
}
