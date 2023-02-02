//
//  ViewController.swift
//  Quizzler
//
//  Created by Sayed Ali Husain on 01/02/2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var questionLable: UILabel!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    @IBOutlet weak var progressBar: UIProgressView!
    
    let quiz = [
        ["4 + 2 =6", "True"],
        ["5 - 3 > 1", "True"],
        ["3 + 8 < 10", "False"]
    ]
    var questionNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateUI()
    }

    @IBAction func answerButtonPressed(_ sender: UIButton) {
        let userAnswer = sender.currentTitle
        let actualAnswer = quiz[questionNumber][1]
        
        if userAnswer == actualAnswer {
            print("Right!")
        } else {
            print("Wrong!")
        }
        
        if questionNumber + 1 < quiz.count {
            questionNumber += 1
        } else {
            questionNumber = 0
        }
        
        pdateUI()
    }
    
    func updateUI() {
        questionLable.text = quiz[questionNumber][0]
    }
    
}

