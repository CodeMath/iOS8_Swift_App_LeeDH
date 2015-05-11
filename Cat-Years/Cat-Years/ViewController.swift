//
//  ViewController.swift
//  Cat-Years
//
//  Created by 이동혁 on 2015. 4. 24..
//  Copyright (c) 2015년 CodeMath. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var age: UITextField!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func findAge(sender: AnyObject) {
        var enterAge = age.text.toInt()
        
        if enterAge != nil{
            var catYears = enterAge! * 7
            resultLabel.text = "Your cat is \(catYears) in cat years"
        } else{
            resultLabel.text = "please Enter number in box"
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

