//
//  HomePageViewController.swift
//  MyWeibo
//
//  Created by cherish on 5/23/15.
//  Copyright (c) 2015 foreverYoung. All rights reserved.
//

import UIKit

class DetailsPageViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    var list:[String] = []
    
    override func loadView() {
        super.loadView()
        
        var swiftTable = UITableView(frame: CGRectMake(0, 0, 320, 568))
        swiftTable.dataSource = self
        swiftTable.delegate = self
        self.view = swiftTable
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        list.append("第一行");
        list.append("第二行");
        list.append("第三行");
        list.append("第四行");
        list.append("第一行");
        list.append("第二行");
        list.append("第三行");
        list.append("第四行");
        list.append("第一行");
        list.append("第二行");
        list.append("第三行");
        list.append("第四行");
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCellStyle.Value2, reuseIdentifier: nil)
        
        var label = UILabel(frame: CGRectMake(10, 5, 300, 80))
        label.text="Hello，I am content"

        
        let button   = UIButton.buttonWithType(UIButtonType.System) as! UIButton
        button.frame = CGRectMake(10, 90, 100, 20)
        button.backgroundColor = UIColor.blueColor()
        button.setTitle("Test Button", forState: UIControlState.Normal)
        button.addTarget(self, action: "buttonAction:", forControlEvents: UIControlEvents.TouchUpInside)
        cell.addSubview(button)
        cell.addSubview(label)
        
        return cell
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }
    
    //每一个cell的高度
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 120.0
    }

    
    
    
    
}