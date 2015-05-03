//
//  ViewController.swift
//  Family Perfect
//
//  Created by Lance Ennen on 4/23/15.
//  Copyright (c) 2015 Lance Ennen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var recordButton: UIButton!
    @IBOutlet weak var recordingInProgress: UILabel!
    @IBOutlet weak var stopButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(animated: Bool) {
        recordButton.enabled = true
        stopButton.hidden = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func recordAudio(sender: UIButton) {
        recordButton.enabled = false
        stopButton.hidden = false
        // TODO: Show text "recording in progress"
        recordingInProgress.hidden = false
        // TODO: Record the user's voice
        println("in recordAudio")
    }

//    @IBAction func stopRecording(sender: UIButton) {
//        recordButton.enabled = true
//        recordingInProgress.hidden = true
//        stopButton.hidden = true
//        println("stop recordAudio")
//    }
}

