//
//  ViewController.swift
//  Quizzler
//
//  Created by Angela Yu on 25/08/2015.
//  Copyright (c) 2015 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Place your instance variables here
    
    let allQuestions = QuestionBank()
    var pickedAnswer : Bool = false
    var questionNumber : Int = 0
    
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var progressBar: UIView!
    @IBOutlet weak var progressLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        questionLabel.text = allQuestions.list[questionNumber].questionText
    }


    @IBAction func answerPressed(_ sender: AnyObject) {
        if sender.tag == 1 { //meaning user clicked the true button with tag 1
            pickedAnswer = true
        }
        
        if sender.tag == 2 { //meaning user clicked the false button with tag 2
            pickedAnswer = false
        }
        
        checkAnswer()
        questionNumber += 1
        nextQuestion()
    }
    
    
    func updateUI() {
      
    }
    

    func nextQuestion() {
        
        if questionNumber < allQuestions.list.count {
            questionLabel.text = allQuestions.list[questionNumber].questionText
        }else{
            print("End of quiz")
            questionNumber = 0
        }
        
    }
    
    
    func checkAnswer() {
        if pickedAnswer == allQuestions.list[questionNumber].answer {
            print("You got it!")
            print(questionNumber)
        }else{
            print("wrong answer!")
            print(questionNumber)
        }
    }
    
    
    func startOver() {
       
    }
    

    
}
