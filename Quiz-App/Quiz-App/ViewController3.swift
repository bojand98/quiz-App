//
//  ViewController3.swift
//  Quiz-App
//
//  Created by Bojan Dimitrijevski on 23/10/18.
//  Copyright © 2018 Bojan Dimitrijevski. All rights reserved.
//

import UIKit


class Question{
    
    let question: String
    let optionA: String
    let optionB: String
    let optionC: String
    let optionD: String
    let correctAnswer: Int
    let moreInfo: String
    let questionImage: String
    
    init(question: String, optionA: String,optionB: String, optionC: String,optionD: String, correctAnswer:Int,
         moreInfo: String,questionImage: String) {
        
        self.question=question
        self.optionA=optionA
        self.optionB=optionB
        self.optionC=optionC
        self.optionD=optionD
        self.correctAnswer=correctAnswer
        self.moreInfo=moreInfo
        self.questionImage=questionImage
    }
}


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
    
    func updateQuestion(){
        
    }
    func updateUI(){
        
    }
    
    var txtFile: String?
    var listOfQuestions:[Question] = []
    var currentQuestion:Question?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let filePath = Bundle.main.path(forResource: "Sport", ofType: "txt"){
            do {
                let contents = try String(contentsOfFile: filePath)
                print(contents)
                
                let lines = contents.split(separator: "\n")
                var counterLine:Int = 1
                var i:Int = 1
                
                while counterLine <= lines.count {
                    
                    if i == 1
                    {
                        let question = lines[counterLine]
                    }
                    else if i == 2{
                        let optionA = lines[counterLine+1]
                    }
                    else if i == 3{
                        let optionB = lines[counterLine+1]
                    }
                    else if i == 4{
                        let optionC = lines[counterLine+1]
                    }
                    else if i == 5{
                        let optionD = lines[counterLine+1]
                    }
                    else if i == 6{
                        let correctAnswer = lines[counterLine+1]
                    }
                        
                    else if i == 7{
                        let moreInfo = lines[counterLine+1]
                    }
                    else if i == 8{
                        let questionImage = lines[counterLine+1]
                    }
                    if i==8 {
                        i=0
                       // var questionInstance:Question = Question(question: <#T##String#>, optionA: <#T##String#>, optionB: <#T##String#>, optionC: <#T##String#>, optionD: <#T##String#>, correctAnswer: <#T##Int#>, moreInfo: <#T##String#>, questionImage: <#T##String#>)
                    }
                }
            }
            catch{
                print(error)
            }
        }
        func refresh(){
            
        }
    }
}

