//
//  AppDelegate.swift
//  battery_friendly_player
//
//  Created by JING TIAN on 6/12/19.
//  Copyright © 2019 JING TIAN. All rights reserved.
//

import Cocoa
import AVKit
import AVFoundation

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    @IBOutlet weak var window: NSWindow!
    
    @IBOutlet weak var playerView: AVPlayerView!


    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
        
        let fileMgr = FileManager.default
        let downloadsDirectory = fileMgr.urls(for: .downloadsDirectory, in: .userDomainMask).first!
        let videoPath = downloadsDirectory.appendingPathComponent("h265_4k_preview_nyc_train_model_4k_4096x2048_clip001_rev002_180x180_3dh.mp4")
        
        print(videoPath)
        let exists = fileMgr.fileExists(atPath: videoPath.path)
        print("exists? " + exists.description)
        
        
        let player = AVPlayer(url: videoPath)
        playerView.player = player
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }


}

