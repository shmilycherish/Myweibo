//
//  ViewController.swift
//  MyWeibo
//
//  Created by cherish on 5/23/15.
//  Copyright (c) 2015 foreverYoung. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    
        
        let button   = UIButton.buttonWithType(UIButtonType.System) as! UIButton
        button.frame = CGRectMake(50, 100, 200, 40)
        button.backgroundColor = UIColor.whiteColor()
        button.setTitle("Test Button", forState: UIControlState.Normal)
        button.addTarget(self, action: "buttonAction:", forControlEvents: UIControlEvents.TouchUpInside)
        
        // Do any additional setup after loading the view, typically from a nib.
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

