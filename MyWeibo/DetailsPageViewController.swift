//
//  HomePageViewController.swift
//  MyWeibo
//
//  Created by cherish on 5/23/15.
//  Copyright (c) 2015 foreverYoung. All rights reserved.
//

import UIKit

class DetailsPageViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    var books:[BookModel] = []
    
    override func loadView() {
        super.loadView()
        
        var swiftTable = UITableView(frame: CGRectMake(0, 0, 320, 568))
        swiftTable.dataSource = self
        swiftTable.delegate = self
        self.view = swiftTable
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        readData()
        

    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCellStyle.Value2, reuseIdentifier: nil)
        
        var titlelabel = UILabel(frame: CGRectMake(8, 2, 300, 20))
        var detaillabel = UITextView(frame: CGRectMake(8, 24, 360, 50))

        let book = books[indexPath.row] as BookModel
        titlelabel.text = book.title
        detaillabel.text = book.detail

        
        let button   = UIButton.buttonWithType(UIButtonType.System) as! UIButton
        button.frame = CGRectMake(10, 90, 100, 20)
        button.backgroundColor = UIColor.blueColor()
        button.setTitle("Test Button", forState: UIControlState.Normal)
        button.addTarget(self, action: "buttonAction:", forControlEvents: UIControlEvents.TouchUpInside)
        cell.addSubview(button)
        cell.addSubview(titlelabel)
         cell.addSubview(detaillabel)
        
        return cell
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return books.count
    }
    
    //每一个cell的高度
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 120.0
    }

    func readData() {
        
        let filePath = NSBundle.mainBundle().pathForResource("data",ofType:"json")
        
        var readError:NSError?
        
        
        if let data = NSData(contentsOfFile:filePath!, options:NSDataReadingOptions.DataReadingUncached, error:&readError) {
            
            if let json: NSDictionary = NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions.MutableContainers, error: nil) as? NSDictionary {
                if let items = json["books"] as? NSArray {
                    for item in items {
                        let title = item["title"] as! NSString
                        let detail = item["summary"] as! NSString
                        let book = BookModel(title: title, detail : detail)
                        books.append(book)
                    }
                }
            }
            
        }
        
        
    }
    



    
}