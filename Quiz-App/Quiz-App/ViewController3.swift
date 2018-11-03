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
    
    @IBAction func nextButtonPressed(_ sender: Any) {
        refresh()
    }
    
    
    @IBAction func answerPressed(_ sender: UIButton) {
        let answerGiven = sender.tag
        if answerGiven == currentQuestion?.correctAnswer {
            print("tocno")
            //sender.tag
            if sender.tag == 1{
                optionA.backgroundColor = UIColor.green
                optionA.isEnabled = false
                optionB.isEnabled = false
                optionC.isEnabled = false
                optionD.isEnabled = false
            }
            else if sender.tag == 2 {
                optionB.backgroundColor = UIColor.green
                optionA.isEnabled = false
                optionB.isEnabled = false
                optionC.isEnabled = false
                optionD.isEnabled = false
            }
            else if sender.tag == 3 {
                optionC.backgroundColor = UIColor.green
                optionA.isEnabled = false
                optionB.isEnabled = false
                optionC.isEnabled = false
                optionD.isEnabled = false
            }
            else if sender.tag == 4 {
                optionD.backgroundColor = UIColor.green
                optionA.isEnabled = false
                optionB.isEnabled = false
                optionC.isEnabled = false
                optionD.isEnabled = false
            }
            
        }else{
            if sender.tag == 1{
                optionA.backgroundColor = UIColor.red
                optionA.isEnabled = false
                optionB.isEnabled = false
                optionC.isEnabled = false
                optionD.isEnabled = false
            }
            else if sender.tag == 2 {
                optionB.backgroundColor = UIColor.red
                optionA.isEnabled = false
                optionB.isEnabled = false
                optionC.isEnabled = false
                optionD.isEnabled = false
            }
            else if sender.tag == 3 {
                optionC.backgroundColor = UIColor.red
                optionA.isEnabled = false
                optionB.isEnabled = false
                optionC.isEnabled = false
                optionD.isEnabled = false
            }
            else if sender.tag == 4 {
                optionD.backgroundColor = UIColor.red
                optionA.isEnabled = false
                optionB.isEnabled = false
                optionC.isEnabled = false
                optionD.isEnabled = false
            }
            print("ne e tocno")
        }
    }

    
    var txtFile: String?
    var listOfQuestions:[Question] = []
    var currentQuestion:Question?
    
    var globalShuffledArr:[Question] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        func shuffleQuestion(questionArr:[Question] )-> [Question]{
//            return questionArr.shuffled()
//        }
    
        if let filePath = Bundle.main.path(forResource: "Geo-Q&A", ofType: "txt"){
            do {
                //print("Ima fajl")
                let contents = try String(contentsOfFile: filePath, encoding: .utf8)
                //print(contents)
                
                let lines = contents.split(separator: "\n")
                var counterLine:Int = 0
                var questionArray: [Question] = []
                //print(lines.count)
                while counterLine+7 <= lines.count {
                    
                    let ques = lines[counterLine]
                    let optA = lines[counterLine+1]
                    let optB = lines[counterLine+2]
                    let optC = lines[counterLine+3]
                    let optD = lines[counterLine+4]
                    let correctAnsw = lines[counterLine+5]
                    let moreInf = lines[counterLine+6]
                    let questionImg = lines[counterLine+7]
                    
                    let questionInstnce = Question(question: String(ques), optionA: String(optA), optionB: String(optB), optionC:String(optC)
                        , optionD: String(optD), correctAnswer: Int(correctAnsw)!, moreInfo: String(moreInf), questionImage: String(questionImg))
                    questionArray.append(questionInstnce)
                    //print(questionInstnce.question)
                    counterLine+=8
                }//endOfReadingTXTFile
                
                var shuffledArr = questionArray.shuffled()
                globalShuffledArr = shuffledArr
                var currentScore: Int = 0
                var numOfCorrectAnsw:Int = 0
                currentQuestion = questionArray[0]
                questionCounterLabel.text = "0/10"
                scoreLabel.text = "Score: " + String(currentScore)
                questionLabel.text = shuffledArr[0].question
                optionA.setTitle(shuffledArr[0].optionA, for: .normal)
                optionB.setTitle(shuffledArr[0].optionB, for: .normal)
                optionC.setTitle(shuffledArr[0].optionC, for: .normal)
                optionD.setTitle(shuffledArr[0].optionD, for: .normal)
                moreInfoLabel.text = shuffledArr[0].moreInfo
                mainImage.image = UIImage(named: shuffledArr[0].questionImage)
                
                
            }
            catch{
                print("error")
            }
        } //endOfReadingFile
    } //end of viewDidLoad()
    
   
    func refresh(){
        for i in 1...9{
            var currentScore: Int = 0
            var numOfCorrectAnsw:Int = 0
            
            optionA.isEnabled = true
            optionB.isEnabled = true
            optionC.isEnabled = true
            optionD.isEnabled = true
            
            currentQuestion = globalShuffledArr[i]
            questionCounterLabel.text = "0/10"
            scoreLabel.text = "Score: " + String(currentScore)
            questionLabel.text = globalShuffledArr[i].question
            optionA.setTitle(globalShuffledArr[i].optionA, for: .normal)
            optionB.setTitle(globalShuffledArr[i].optionB, for: .normal)
            optionC.setTitle(globalShuffledArr[i].optionC, for: .normal)
            optionD.setTitle(globalShuffledArr[i].optionD, for: .normal)
            moreInfoLabel.text = globalShuffledArr[i].moreInfo
            mainImage.image = UIImage(named: globalShuffledArr[i].questionImage)
        }
}
}
