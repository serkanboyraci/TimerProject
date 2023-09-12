//
//  ViewController.swift
//  TimerProject
//
//  Created by Ali serkan Boyracı  on 7.09.2022.
//

import UIKit

class ViewController: UIViewController {
    
    var timer = Timer()
    var counter = 0

    @IBOutlet var timeLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        counter = 10
        timeLabel.text = "Time : \(counter)"
      
        
    }
    
    @objc func myTimer() {
        timeLabel.text = "Time: \(counter)"
        counter -= 1
    
        if counter == 0 {
            timeLabel.text = "Time is Over"
            timer.invalidate() //stop the timer
            
        }
    }


    @IBAction func buttonClicked(_ sender: Any) {
        
        // decrease 1 second time interval
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(myTimer), userInfo: nil, repeats: true)
        
    }
}

