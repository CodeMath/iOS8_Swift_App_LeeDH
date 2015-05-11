//
//  ViewController.swift
//  Controlling The Keyboard
//
//  Created by 이동혁 on 2015. 5. 5..
//  Copyright (c) 2015년 CodeMath. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {


 
    @IBOutlet weak var inputValue: UITextField!
    
    @IBOutlet weak var labels: UILabel!
  
    @IBAction func buttonPressed(sender: AnyObject) {
        
        labels.text = inputValue.text
    
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.inputValue.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        
        self.view.endEditing(true)

    }

    func textFieldsShouldReturn(textField: UITextField!) -> Bool {
    
        textField.resignFirstResponder()
        
        return true
    }
    
}

