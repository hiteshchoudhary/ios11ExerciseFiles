//
//  ViewController.swift
//  RunnersApp
//
//  Created by studio on 09/07/17.
//  Copyright © 2017 studio. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var playBtn: UIButton!
    
    var time = 0
    var timer = Timer()
    
    var buttonState = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        timeLabel.text = "00"
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    @IBAction func playBtnTapped(_ sender: Any) {
        if buttonState {
            playBtn.setTitle("Pause", for: .normal)
            buttonState = false
            timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.addToTime), userInfo: nil, repeats: true)
        } else {
            playBtn.setTitle("Start", for: .normal)
            buttonState = true
            timer.invalidate()
        }
    }
    
    
    @IBAction func stopBtnTapped(_ sender: Any) {
        timer.invalidate()
        time = 0
        timeLabel.text = "00"
        // TODO: change main button to "Start"
    }
    
    @IBAction func resetBtnTapped(_ sender: Any) {
        //TODO: Write code for reset button
    }
    
    @objc func addToTime(){
        time = time + 1
        timeLabel.text = "\(time)"
    }

}







