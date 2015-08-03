//
//  ViewController.swift
//  CookieClicker 2.0
//
//  Created by Camper on 7/30/15.
//  Copyright (c) 2015 tyler. All rights reserved.
//

import UIKit

class ViewController: UIViewController{

    var score = 0
    
    @IBOutlet weak var scoreLabel: UILabel!
    
    @IBAction func incrementScore(sender: AnyObject) {
        score++
        scoreLabel.text = String(score)
        
         = UIColor.blueColor
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        var colourTimer = NSTimer.scheduledTimerWithTimeInterval(0.4, target: self, selector: Selector("update"
            ), userInfo: nil, repeats: true)
        
    }

    
    func update() {
        
        var rand = arc4random_uniform(2)
        if rand == 0{
            view.backgroundColor = UIColor.redColor()
        }
        if rand == 1{
            view.backgroundColor = UIColor.blueColor()
        }
        if rand == 2{
            view.backgroundColor = UIColor.greenColor()
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

