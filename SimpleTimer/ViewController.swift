//
//  ViewController.swift
//  SimpleTimer
//
//  Created by D7703_18 on 2018. 4. 9..
//  Copyright © 2018년 D7703_18. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var timeSwitch: UISwitch!
    @IBOutlet weak var timeLabel: UILabel!
    var myTimer=Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        timeSwitch.setOn(false, animated: true)
    }

    @objc func updateTime(){
        let date = Date()
        let formatter = DateFormatter()
        formatter.dateFormat = "HH:mm:ss a"
        timeLabel.text = formatter.string(from: date)
    }
    @IBAction func timerStart(_ sender: Any) {
        if timeSwitch.isOn == true{
            myTimer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(updateTime), userInfo: nil, repeats: true)
        }
        else{
            myTimer.invalidate()
        }
    }
    

}

