//
//  ViewController.swift
//  Quizller
//
//  Created by Egor  on 31.07.2020.
//  Copyright © 2020 Gregor Kramer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   
    @IBOutlet weak var score: UILabel!
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    
    var quizBrain = QuizBrain()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
    }

    
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle!
        let userGotItRight = quizBrain.checkAnswer(userAnswer)
        
        
        if userGotItRight {
            sender.backgroundColor = .systemGreen
        } else {
            sender.backgroundColor = .systemRed
        }
        
        quizBrain.nextQuestion()

        
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
    
    }
    
    
    @objc func updateUI() {
        questionLabel.text = quizBrain.gotLabel()
        trueButton.backgroundColor = .clear
        falseButton.backgroundColor = .clear
        progressBar.progress = quizBrain.gotProgress()
        score.text = "Score: \(String(quizBrain.score))"

    }
    
}

