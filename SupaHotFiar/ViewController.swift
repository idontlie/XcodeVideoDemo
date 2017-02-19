//
//  ViewController.swift
//  SupaHotFiar
//
//  Created by Angela Rubin on 2/19/17.
//  Copyright © 2017 Shane. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation

class ViewController: UIViewController {
    
    var playerViewController = AVPlayerViewController()
    var playerView = AVPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func viewDidAppear(animated: Bool) {
        var fileURL = NSURL(fileURLWithPath: "/afs/andrew.cmu.edu/usr14/aerubin/Downloads/Tick Tick Boom (The Hives cover)-TqoS85uBHMc.mp4")
        playerView = AVPlayer(URL: fileURL)
        playerViewController.player = playerView
        self.presentViewController(playerViewController, animated: true) {
            self.playerViewController.player?.play()
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func shouldAutorotate() -> Bool {
        return false
    }
    
    override func supportedInterfaceOrientations() -> UIInterfaceOrientationMask {
        return UIInterfaceOrientationMask.Portrait
    }


}


