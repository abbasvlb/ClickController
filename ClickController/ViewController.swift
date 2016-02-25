//
//  ViewController.swift
//  ClickController
//
//  Created by Abbas Aniefa on 25/02/16.
//  Copyright © 2016 Abbas Aniefa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    var label:UILabel!
    var count:Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label=UILabel()
        label.frame=CGRectMake(150, 150, 60, 60)
        label.text = "0"
        
        self.view.addSubview(label)
        
        var incrementButton=UIButton()
        incrementButton.frame=CGRectMake(100, 250, 60, 60)
        incrementButton.setTitle("Inc", forState: .Normal)
        incrementButton.setTitleColor(UIColor.blueColor(), forState: .Normal)
        
        self.view.addSubview(incrementButton)
        
        var decrementButton=UIButton()
        decrementButton.frame=CGRectMake(170, 250, 60, 60)
        decrementButton.setTitle("Dec", forState: .Normal)
        decrementButton.setTitleColor(UIColor.blueColor(), forState: .Normal)
        
        self.view.addSubview(decrementButton)
        
        incrementButton.addTarget(self, action: "incrementMethod", forControlEvents: UIControlEvents.TouchUpInside)
        decrementButton.addTarget(self, action: "decrementMethod", forControlEvents: UIControlEvents.TouchUpInside)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func incrementMethod(){
        self.count++
        self.label.text = "\(self.count)"
    }
    
    func decrementMethod(){
        self.count--
        self.label.text = "\(self.count)"
    }

}

