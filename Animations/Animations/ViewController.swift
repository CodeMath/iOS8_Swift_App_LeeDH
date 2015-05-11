//
//  ViewController.swift
//  Animations
//
//  Created by 이동혁 on 2015. 5. 6..
//  Copyright (c) 2015년 CodeMath. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var counter = 1
    
    var timer = NSTimer()
    
    var isAniating = true
    
    @IBOutlet weak var alienImage: UIImageView!
    
    @IBAction func update(sender: AnyObject) {
        if isAniating == true {
//            취소
            timer.invalidate()
            
            isAniating = false
            
        } else{
            timer = NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector:("doAnimation"), userInfo: nil, repeats:true)
            
                        isAniating = true
        }
        
        //        버튼 클릭 시
//        if counter == 6 {
//            
//            counter = 1
//            
//        } else {
//            
//            counter++
//            
//        }
//        
//        alienImage.image = UIImage(named: "f\(counter).png")
        
    
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
//        알파값 조절
//        alienImage.alpha = 0
        
        // 자동
        timer = NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector:("doAnimation"), userInfo: nil, repeats:true)
        
    }
// 자동
    func doAnimation() {
        if counter == 6 {
            
            counter = 1
            
        } else {
            
            counter++
            
        }
        
        alienImage.image = UIImage(named: "f\(counter).png")
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    override func viewDidLayoutSubviews() {
//                나타나기
//        alienImage.center = CGPointMake(alienImage.center.x - 400, alienImage.center.y)
//              확대
//        alienImage.frame = CGRectMake(100, 20, 0,0)
        
    }
    
    override func viewDidAppear(animated: Bool) {
        
        UIView.animateWithDuration(1, animations: { () -> Void in
//                나타나기
//            self.alienImage.center = CGPointMake(self.alienImage.center.x + 400, self.alienImage.center.y)
            
            //        알파값 조절
            //                self.alienImage.alpha = 1
//              확대
//            self.alienImage.frame = CGRectMake(100, 20, 100,200)
        })
        
    }
    
}

