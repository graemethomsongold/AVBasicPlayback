//
//  ViewController.swift
//  AVBasicPlayback
//
//  Created by Graeme Thomson-Gold on 24/11/2018.
//  Copyright © 2018 Graeme Thomson-Gold. All rights reserved.
//

import Cocoa
import AVKit
import AVFoundation

class ViewController: NSViewController {

    @IBOutlet weak var playerView: AVPlayerView!
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let url = URL(string: "https://devimages-cdn.apple.com/samplecode/avfoundationMedia/AVFoundationQueuePlayer_HLS2/master.m3u8") else {
            return
        }
        // Create a new AVPlayer and associate it with the player view
        let player = AVPlayer(url: url)
        playerView.player = player
        
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

