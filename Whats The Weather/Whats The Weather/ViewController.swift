//
//  ViewController.swift
//  Whats The Weather
//
//  Created by 이동혁 on 2015. 5. 6..
//  Copyright (c) 2015년 CodeMath. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userCity: UITextField!
    
    @IBAction func findweather(sender: AnyObject) {
        var url = NSURL( string : "http://www.weather-forecast.com/locations/" + userCity.text.stringByReplacingOccurrencesOfString(" ", withString: "-") + "/forecasts/latest")
        
        // nil인지 체크를 해야 크레시가 안일어남....
        if url != nil{
            
            let task = NSURLSession.sharedSession().dataTaskWithURL(url!, completionHandler: { (data, response, error) -> Void in
                
                var urlError = false
                var weather = ""
                
                
                if error == nil {
                    
                    var urlContent = NSString(data: data, encoding: NSUTF8StringEncoding) as NSString!
                    
                    var urlContentArray = urlContent.componentsSeparatedByString("<span class=\"phrase\">")
                    
                    if urlContentArray.count > 0 {
                        
                        var weatherArray = urlContentArray[1].componentsSeparatedByString("</span>")
                        
                        weather = weatherArray[0] as! String
                        
                        weather = weather.stringByReplacingOccurrencesOfString("&deg;", withString: "º")
                        
                    } else{
                        
                        urlError == true
                        
                    }
                    
                } else {
                    
                    urlError = true
                    
                }
                
                dispatch_async(dispatch_get_main_queue()){
                    
                    if urlError == true{
                        
                        self.showError()
                        
                    } else {
                        
                        self.resultLabel.text = weather
                    }
                }
                
            })
            task.resume()
            
        } else {
            showError()
        }

        
    
    }
    

    
    @IBOutlet weak var resultLabel: UILabel!
    
    
    func showError(){
        resultLabel.text = "Was NOT able to find weather for " + userCity.text + ". Please try again"
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

