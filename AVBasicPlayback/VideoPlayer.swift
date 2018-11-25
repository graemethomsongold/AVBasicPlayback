//
//  VideoPlayer.swift
//  AVBasicPlayback
//
//  Created by Graeme Thomson-Gold on 25/11/2018.
//  Copyright © 2018 Graeme Thomson-Gold. All rights reserved.
//
import Cocoa
import AVKit
import AVFoundation
import Foundation

class VideoPlayer {
    var url: URL;
    let player: AVPlayer;
    
    init(){
        url = URL(fileURLWithPath: "https://devimages-cdn.apple.com/samplecode/avfoundationMedia/AVFoundationQueuePlayer_HLS2/master.m3u8");
        player = AVPlayer(url: url);
    }
}
