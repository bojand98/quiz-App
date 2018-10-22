//
//  ViewController.swift
//  Quiz-App
//
//  Created by Bojan Dimitrijevski on 25/9/18.
//  Copyright © 2018 Bojan Dimitrijevski. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,UITextFieldDelegate{
    
    
    
    @IBOutlet weak var name: UITextField!
    
   
    
    
    var prom:String?
    override func viewDidLoad() {
        super.viewDidLoad()

        let newLayer = CAGradientLayer()
        newLayer.colors = [UIColor.clear.cgColor, UIColor.clear.cgColor]
        newLayer.frame = view.frame
        
        view.layer.insertSublayer(newLayer, at: 0)
    }


}

