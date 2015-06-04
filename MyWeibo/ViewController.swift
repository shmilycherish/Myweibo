//
//  ViewController.swift
//  MyWeibo
//
//  Created by cherish on 5/23/15.
//  Copyright (c) 2015 foreverYoung. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var list:[String] = []
    
    override func loadView() {
        super.loadView()
        
        let button = UIButton.buttonWithType(UIButtonType.System) as! UIButton
        button.frame = CGRectMake(0, 0, 370, 670)
        button.backgroundColor = UIColor.lightGrayColor()
        button.setTitle("Test Button", forState: UIControlState.Normal)
        button.addTarget(self, action: "buttonAction:", forControlEvents: UIControlEvents.TouchDragInside)
        
        self.view.addSubview(button)

    }

    
    func buttonAction(sender:UIButton!)
    {
        println("button has been clicked")
        let detailsController = DetailsPageViewController()
        self.navigationController?.pushViewController(detailsController, animated: true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


    


}

