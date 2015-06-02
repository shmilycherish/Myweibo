//
//  HomePageViewController.swift
//  MyWeibo
//
//  Created by cherish on 5/23/15.
//  Copyright (c) 2015 foreverYoung. All rights reserved.
//

import UIKit

class DetailsPageViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var view = UIView(frame: UIScreen.mainScreen().bounds)
        
        var label = UILabel(frame: CGRectMake(50, 100, 200, 40))
        label.text="This is second view"
        
        self.view = view
        self.view.addSubview(label)
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
}