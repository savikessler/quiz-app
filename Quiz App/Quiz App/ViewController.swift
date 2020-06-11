//
//  ViewController.swift
//  Quiz App
//
//  Created by Savi Kessler on 6/3/20.
//  Copyright © 2020 Savi Kessler. All rights reserved.
//

import UIKit
struct Question{
    var Question : String!
    var Answers : [String]!
    var Answer :  Int!
}



class ViewController: UIViewController {

    @IBOutlet var Buttons: [UIButton]!
    @IBOutlet var qLabel: UILabel!
    
    var Questions = [Question]()
    var Qnumber = Int()
    var AnswerNumber = Int()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        Questions = [Question(Question: "How many feet in a mile", Answers: ["5280","5820","8250","5208"], Answer: 0),Question(Question: "In what yeard did the USA put a man on the moon", Answers: ["1970","1960","1969","1965"], Answer: 2),Question(Question: "How old must one be to vote in the USA", Answers: ["16","17","18","19"], Answer: 2),Question(Question: "How many minutes in a day", Answers: ["1600","2600","1200","1440"], Answer: 3)]
   PickQuestion()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func PickQuestion (){
        if Questions.count > 0 {
            Qnumber=0
            qLabel.text = Questions[Qnumber].Question
            AnswerNumber=Questions[Qnumber].Answer
            for i in 0..<Buttons.count{
                Buttons[i].setTitle(Questions[Qnumber].Answers[i], for: UIControl.State.normal)
            }
            Questions.remove(at:Qnumber)
        }
        else{
         performSegue(withIdentifier: "Win", sender: self)
        }
    }

    @IBAction func btn1(_ sender: Any) {
        if AnswerNumber==0{
            PickQuestion()
        }
        else{
           performSegue(withIdentifier: "Lose", sender: self)
        }
    }
    @IBAction func Btn2(_ sender: Any) {
        if AnswerNumber==1{
                  PickQuestion()
              }
              else{
            performSegue(withIdentifier: "Lose", sender: self)
        
              }
    }
    @IBAction func Btn3(_ sender: Any) {
        if AnswerNumber==2{
                  PickQuestion()
              }
              else{
            performSegue(withIdentifier: "Lose", sender: self)
              }
    }
    @IBAction func Btn4(_ sender: Any) {
        if AnswerNumber==3{
                  PickQuestion()
              }
              else{
                  performSegue(withIdentifier: "Lose", sender: self)
              }
    }
    
    
    
}

