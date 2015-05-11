//
//  FirstViewController.swift
//  To do List
//
//  Created by 이동혁 on 2015. 5. 5..
//  Copyright (c) 2015년 CodeMath. All rights reserved.
//

import UIKit

var toDoList = [ String ] ()

class FirstViewController: UIViewController, UITableViewDelegate {

    @IBOutlet weak var toDoListTable: UITableView!
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if NSUserDefaults.standardUserDefaults().objectForKey("toDoList") != nil {
            toDoList = NSUserDefaults.standardUserDefaults().objectForKey("toDoList") as! [String]

        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    // 테이블 뷰의 보여줄 아이탬 갯수
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
     return toDoList.count
    }
    

    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        // 프로토타입 셀의 identifier를 만들고 나서, 해당 값을 가져온다는 것을 명시
        let cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "Cell")
        //
        cell.textLabel?.text = toDoList[indexPath.row]
        
        return cell
    }
    // table review(리로드)
    override func viewDidAppear(animated: Bool) {
        toDoListTable.reloadData()
    }
    // 스와이프로 삭제하기
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath){
     
        if editingStyle == UITableViewCellEditingStyle.Delete{
            toDoList.removeAtIndex(indexPath.row)

            // 저장한 거 확인(Commit 이라고 생가하기)
            NSUserDefaults.standardUserDefaults().setObject(toDoList, forKey: "toDoList")
            // 커밋하고 나서 리로드
            toDoListTable.reloadData()
        }
        
    }
}

