//
//  ViewController.swift
//  is It Prime
//
//  Created by 이동혁 on 2015. 4. 29..
//  Copyright (c) 2015년 CodeMath. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var inputNumber: UITextField!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func isItPrime(sender: AnyObject) {
        
        var numberInt = inputNumber.text.toInt()
        if numberInt != nil{
            var unwrappedNumber = numberInt!
            
            var isPrime = true
            
            if unwrappedNumber == 0{
                isPrime = false
            }
            
            if unwrappedNumber == 1 {
                
                isPrime = false
            }
            
            if unwrappedNumber != 2 && unwrappedNumber != 1 && unwrappedNumber != 0{
                
                for var i = 2; i < unwrappedNumber; i++ {
                    if unwrappedNumber % i == 0{
                        isPrime = false
                    }
                }
                
            }
            
            if isPrime == true{
              resultLabel.text = "\(unwrappedNumber) is Prime!"
            }else{
                resultLabel.text = "\(unwrappedNumber) is Not Prime!"
            }

        }else{
            resultLabel.text = "Please enter a number in the box"
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

