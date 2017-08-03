//
//  ViewController.swift
//  Shuffle
//
//  Created by studio on 28/07/17.
//  Copyright © 2017 studio. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet weak var musicName: UILabel!
    
    let musicList = ["wingspan", "oaklawn-dreams", "merluzzo", "lennys-song", "interlaken-crossroad", "cayuga-summer", "broken-shovel"]
    
    var myAudioPlayer = AVAudioPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        makePlayerReady()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func shuffleTapped(_ sender: Any) {
        makePlayerReady()
        myAudioPlayer.play()
    }
    
    
    @IBAction func pauseTapped(_ sender: Any) {
        myAudioPlayer.pause()
    }
    
    @IBAction func stopTapped(_ sender: Any) {
        myAudioPlayer.stop()
        myAudioPlayer.currentTime = 0
    }
    
    func makePlayerReady(){
        do {
            
            //generate a random number
            let randomMusic = Int(arc4random_uniform(7))
            print(randomMusic)
            let selectedMusic = musicList[randomMusic]
            
            //audio part
            
            let myURL = URL(fileURLWithPath: Bundle.main.path(forResource: selectedMusic, ofType: "mp3")!)
            myAudioPlayer = try AVAudioPlayer(contentsOf: myURL)
            myAudioPlayer.prepareToPlay()
            
            
        } catch {
            print(error)
        }
    }
    
    

}


//Label should display proper name of music












