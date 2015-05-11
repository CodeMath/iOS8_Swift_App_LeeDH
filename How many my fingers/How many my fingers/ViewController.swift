//
//  ViewController.swift
//  How many my fingers
//
//  Created by 이동혁 on 2015. 4. 27..
//  Copyright (c) 2015년 CodeMath. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var guess: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    @IBAction func guessButton(sender: AnyObject) {
        var randomNumber = Int(arc4random_uniform(6))

        var guessInt = guess.text.toInt()
        
        if guessInt != nil {
            if randomNumber == guessInt{
                resultLabel.text = "Correct!"
            }else if guessInt > 5 {
                resultLabel.text = "No more than 5"
            }else{
                resultLabel.text = "Nope! It was a \(randomNumber)"
            }
        }else{
            resultLabel.text = "Enter a number 0~5"
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

