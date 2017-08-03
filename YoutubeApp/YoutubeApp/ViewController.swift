//
//  ViewController.swift
//  YoutubeApp
//
//  Created by studio on 27/07/17.
//  Copyright © 2017 studio. All rights reserved.
//

import UIKit
import YouTubePlayer_Swift

class ViewController: UIViewController {

//    https://www.youtube.com/watch?v=CXSwNIPsyTs&list=PLRAV69dS1uWSZJXa62hmOUKLnOZqxYrn9
    
//    CXSwNIPsyTs   - videoID
//    PLRAV69dS1uWSZJXa62hmOUKLnOZqxYrn9    -   playlistID
    
  
    @IBOutlet weak var videoView: YouTubePlayerView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func previousTapped(_ sender: Any) {
        videoView.previousVideo()
    }
    
    @IBAction func nextTapped(_ sender: Any) {
        videoView.nextVideo()
    }
    
    @IBAction func playTapped(_ sender: UIButton) {
        if sender.isSelected {
            sender.setTitle("Pause", for: .selected)
            videoView.pause()
        }else {
            sender.setTitle("Play", for: .normal)
            videoView.play()
        }
    }
    
    @IBAction func loadVideo(_ sender: Any) {
        let myVideo: String = "CXSwNIPsyTs"
        videoView.loadVideoID(myVideo)
    }
    
    @IBAction func loadPlaylist(_ sender: Any) {
        let myPlaylist: String = "PLRAV69dS1uWSZJXa62hmOUKLnOZqxYrn9"
        videoView.loadPlaylistID(myPlaylist)
    }
    

}










