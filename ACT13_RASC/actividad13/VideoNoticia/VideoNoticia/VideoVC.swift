//
//  VideoVC.swift
//  VideoNoticia
//
//  Created by alicharlie on 12/05/16.
//  Copyright © 2016 codepix. All rights reserved.
//
import SwiftUI
import UIKit
import AVKit
import AVFoundation
var audioPlayer: AVAudioPlayer!

class VideoVC: AVPlayerViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let ligaVideo = "https://walterebert.com/playground/video/hls/sintel-trailer.m3u8"
    
        let urlvideo = URL(string: ligaVideo)
        
                if let urlvideo = urlvideo
    {
        let asset = AVAsset (url: urlvideo)
    let item = AVPlayerItem(asset: asset)
    let miPlayer = AVPlayer(playerItem: item)
    self.player = miPlayer
    miPlayer.play()
    }

    }

    
    

   }