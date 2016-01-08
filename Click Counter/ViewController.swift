//
//  ViewController.swift
//  Click Counter
//
//  Created by Eduardo Prats on 1/7/16.
//  Copyright © 2016 edprats. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var count = 0
    var label: UILabel!
    var bgColor = 0

    override func viewDidLoad() {
        super.viewDidLoad()

        // create a label
        label = UILabel()
        // position label
        label.frame = CGRectMake(150, 150, 60, 60)
        label.text = "0"
        // add label to the main view
        self.view.addSubview(label)
        
        // create an increment button
        let buttonIncrement = UIButton()
        buttonIncrement.frame = CGRectMake(150, 250, 100, 60)
        buttonIncrement.setTitle("Increment", forState: .Normal)
        buttonIncrement.setTitleColor(UIColor.blueColor(), forState: .Normal)
        // add button to the main view
        self.view.addSubview(buttonIncrement)
        
        buttonIncrement.addTarget(self, action: "incrementCount", forControlEvents: UIControlEvents.TouchUpInside)
        
        // create an decrease button
        let buttonDecrement = UIButton()
        buttonDecrement.frame = CGRectMake(150, 300, 100, 60)
        buttonDecrement.setTitle("Decrement", forState: .Normal)
        buttonDecrement.setTitleColor(UIColor.blueColor(), forState: .Normal)
        // add button to the main view
        self.view.addSubview(buttonDecrement)
        
        buttonDecrement.addTarget(self, action: "decrementCount", forControlEvents: UIControlEvents.TouchUpInside)
        
        // create button to change view background color
        let buttonBackgroundToggle = UIButton()
        buttonBackgroundToggle.frame = CGRectMake(150, 350, 100, 60)
        buttonBackgroundToggle.setTitle("BG Toggle", forState: .Normal)
        buttonBackgroundToggle.setTitleColor(UIColor.redColor(), forState: .Normal)
        
        self.view.addSubview(buttonBackgroundToggle)
        
        buttonBackgroundToggle.addTarget(self, action: "toggleBackgroundColor", forControlEvents: UIControlEvents.TouchUpInside)
        
    }
    
    func incrementCount() {
        self.count++
        self.label.text = "\(self.count)"
    }
    
    func decrementCount() {
        self.count--
        self.label.text = "\(self.count)"
    }

    func toggleBackgroundColor() {
        if bgColor == 0 {
            self.view.backgroundColor = UIColor.greenColor()
            bgColor++
        } else {
            self.view.backgroundColor = UIColor.whiteColor()
            bgColor--
        }
    }



}

