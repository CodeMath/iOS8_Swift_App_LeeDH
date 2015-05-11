//
//  ViewController.swift
//  Stopwatch
//
//  Created by 이동혁 on 2015. 4. 29..
//  Copyright (c) 2015년 CodeMath. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    var timer = NSTimer()
    
    var count = 0
    
    func updateTime() {
        
        count++
        time.text = "\(count)"
        
    }
    
    @IBOutlet weak var time: UILabel!
    
    @IBAction func pause(sender: AnyObject) {

        timer.invalidate()
    }

    @IBAction func stop(sender: AnyObject) {
        timer.invalidate()
        count = 0
        time.text = "0"
    
    }
    
    @IBAction func play(sender: AnyObject) {
    
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector:Selector("updateTime"), userInfo: nil, repeats: true)
    
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

