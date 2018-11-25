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
    
    let delegate = NSApplication.shared.delegate as! AppDelegate
    
    @IBOutlet weak var playerView: AVPlayerView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Create a new AVPlayer and associate it with the player view
        let player = AVPlayer(url: delegate.vid.url)
        playerView.player = player
        
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

