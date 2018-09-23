//
//  ViewController.swift
//  HowManyFingers
//
//  Created by Tarek Moubarak on 9/23/18.
//  Copyright © 2018 Tarek Moubarak. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var userInput: UITextField!
    @IBOutlet weak var resultLbl: UILabel!
    
    @IBAction func guessBtn(_ sender: Any) {
        let randomNumber = Int.random(in: 0 ..< 10)
        //OR
//        let randomNumber = String(arc4random_uniform(10));
//        if (randomNumber == userInput.text){
        if (randomNumber == Int(userInput.text!)){
            resultLbl.text = "Correct!"
        } else{
            resultLbl.text = "Wrong! Correct number is \(randomNumber)"
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

