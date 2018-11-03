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
        
        let defaults = UserDefaults.standard
        let lastLaunch = defaults.string(forKey: "lastRun")
        print(lastLaunch!)
        
        let now:Date = Date()
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd MM yyyy HH:mm:ss"
        let dateString = dateFormatter.string(from: now)
        defaults.set(dateString, forKey: "lastRun")
        
        defaults.set(name.text, forKey: "name")
        name.text = defaults.string(forKey: "name")
        
    }


}

