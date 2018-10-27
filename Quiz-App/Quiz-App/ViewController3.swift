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
    @IBOutlet weak var moreInfoLabel: UILabel!
    
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
        
        func shuffleQuestion(questionArr:[Question] )-> [Question]{
            return questionArr.shuffled()
        }
        
        if let filePath = Bundle.main.path(forResource: "Geo-Q&A", ofType: "txt"){
            do {
                //print("Ima fajl")
                let contents = try String(contentsOfFile: filePath, encoding: .utf8)
                //print(contents)
                
                let lines = contents.split(separator: "\n")
                var counterLine:Int = 0
                var questionArray: [Question] = []
//                print(lines.count)
                while counterLine+7 <= lines.count {
                    
                    let ques = lines[counterLine]
                    let optA = lines[counterLine+1]
                    let optB = lines[counterLine+2]
                    let optC = lines[counterLine+3]
                    let optD = lines[counterLine+4]
                    let correctAnsw = lines[counterLine+5]
                    let moreInf = lines[counterLine+6]
                    let questionImg = lines[counterLine+7]
                    
                    var questionInstnce = Question(question: String(ques), optionA: String(optA), optionB: String(optB), optionC:String(optC)
                        , optionD: String(optD), correctAnswer: Int(correctAnsw)!, moreInfo: String(moreInf), questionImage: String(questionImg))
                    questionArray.append(questionInstnce)
//                    print("EVE TI ")
//                    print(questionInstnce.question)
                    counterLine+=8
                }
                
                var shuffledArr = shuffleQuestion(questionArr: questionArray)
                var currentScore: Int = 0
                var currentQuestionNum: Int = 1
                
                questionCounterLabel.text = String(currentQuestionNum) + "/10"
                scoreLabel.text = "Score: " + String(currentScore)
                questionLabel.text = shuffledArr[0].question
                optionA.setTitle(shuffledArr[0].optionA, for: .normal)
                optionB.setTitle(shuffledArr[0].optionB, for: .normal)
                optionC.setTitle(shuffledArr[0].optionC, for: .normal)
                optionD.setTitle(shuffledArr[0].optionD, for: .normal)
                moreInfoLabel.text = shuffledArr[0].moreInfo
                mainImage.image = UIImage(named: shuffledArr[0].questionImage)
                
                func refresh(){
                    for i in 1...9{
                        questionCounterLabel.text = String(currentQuestionNum) + "/10"
                        scoreLabel.text = "Score: " + String(currentScore)
                        questionLabel.text = shuffledArr[i].question
                        optionA.setTitle(shuffledArr[i].optionA, for: .normal)
                        optionB.setTitle(shuffledArr[i].optionB, for: .normal)
                        optionC.setTitle(shuffledArr[i].optionC, for: .normal)
                        optionD.setTitle(shuffledArr[i].optionD, for: .normal)
                        moreInfoLabel.text = shuffledArr[i].moreInfo
                        mainImage.image = UIImage(named: shuffledArr[i].questionImage)
                        currentQuestionNum += 1
                    }
                }
             
                
            }
            catch{
                print(error)
            }
        }
       
        
       
    }
}

