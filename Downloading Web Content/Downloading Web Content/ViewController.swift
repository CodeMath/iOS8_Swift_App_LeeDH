//
//  ViewController.swift
//  Downloading Web Content
//
//  Created by 이동혁 on 2015. 5. 5..
//  Copyright (c) 2015년 CodeMath. All rights reserved.
// 웹사이트 파씽

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var webview: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // URL 접급
        let url = NSURL(string: "http://www.naver.com")
        
        // Session url에 대한...
        let task = NSURLSession.sharedSession().dataTaskWithURL(url!) {
            // closure에 대한 formatting
            (data, response, error) in
            
            if error == nil {
                //
                var urlContent = NSString( data: data, encoding: NSUTF8StringEncoding )
                
                println(urlContent)
                

                
                    self.webview.loadHTMLString("\(urlContent)", baseURL: nil)
            }
            
            
        }
        
        task.resume()
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

