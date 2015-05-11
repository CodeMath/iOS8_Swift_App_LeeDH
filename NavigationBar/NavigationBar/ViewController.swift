//
//  ViewController.swift
//  NavigationBar
//
//  Created by 이동혁 on 2015. 4. 29..
//  Copyright (c) 2015년 CodeMath. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //시간 관련 오브젝트
    var timer = NSTimer()
    
    var count = 0
    
    func result() {
        
        count++
        println(count)
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector : Selector("result"), userInfo: nil, repeats: true )
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

