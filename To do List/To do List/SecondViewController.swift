//
//  SecondViewController.swift
//  To do List
//
//  Created by 이동혁 on 2015. 5. 5..
//  Copyright (c) 2015년 CodeMath. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var item: UITextField!
    
    
    @IBAction func addItem(sender: AnyObject) {
        // 리스트에 넣기
        toDoList.append(item.text)
        // 초기화
        item.text=""
        // 평생 리스트 저장
        NSUserDefaults.standardUserDefaults().setObject(toDoList, forKey: "toDoList")
    
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // 키보드 밖으로 탭했을 때 키보드 닫기
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        
        self.view.endEditing(true)
        
    }
    // 키보드 리턴키 
    func textFieldreturn(TextField: UITextField!)->Bool {
        
        item.resignFirstResponder()
        
        return true
    }

}

