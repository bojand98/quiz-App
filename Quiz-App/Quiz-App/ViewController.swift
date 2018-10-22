//
//  ViewController.swift
//  Quiz-App
//
//  Created by Bojan Dimitrijevski on 25/9/18.
//  Copyright © 2018 Bojan Dimitrijevski. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    var textFieldValue:String?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textFieldValue = textField.text
        return true
    }  
}

