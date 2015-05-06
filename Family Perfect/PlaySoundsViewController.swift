//
//  PlaySoundsViewController.swift
//  Family Perfect
//
//  Created by Lance Ennen on 5/5/15.
//  Copyright (c) 2015 Lance Ennen. All rights reserved.
//

import UIKit
import AVFoundation

class PlaySoundsViewController: UIViewController {
    
    var audioPlayer:AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        if var filePath = NSBundle.mainBundle().pathForResource("movie_quote", ofType: "mp3") {
            var filePathUrl = NSURL.fileURLWithPath(filePath)
            audioPlayer = AVAudioPlayer(contentsOfURL: filePathUrl, error: nil)
        } else {
            println("the filePath is empty")
        }
    }

    @IBAction func playSlowAudio(sender: UIButton) {
        println("play slow audio")
        audioPlayer.play()
    }
}
