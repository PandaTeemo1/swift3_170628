//
//  AVPlayerViewController.swift
//  SwiftTutorial20170627
//
//  Created by ParkD on 2017. 6. 29..
//  Copyright © 2017년 ParkD. All rights reserved.
//

import UIKit
import AVFoundation

class AVPlayerViewController: UIViewController {

    var audioPlayer:AVAudioPlayer!
    
    var avPlayer:AVPlayer!
    
    @IBAction func onStop2Click(_ sender: Any) {
        if avPlayer != nil{
            avPlayer.pause()
            avPlayer = nil
        }
    }
    @IBAction func onPlay2Click(_ sender: Any) {
        let addr = "http://www.scientificinvesting.eu/a/Beethoven%20-%20Concerto%20for%20piano%20and%20orchestra%20n.3%20Op.37%20in%20C%20minor%20-%201%20Allegro%20con%20brio.mp3"
        let url = URL(string: addr)
        let playerItem = AVPlayerItem(url: url!)
        avPlayer = AVPlayer(playerItem: playerItem)
        avPlayer.play()
    }
    @IBAction func onStopClick(_ sender: Any) {
        if audioPlayer != nil {
            audioPlayer.stop()
        }
    }
    @IBAction func onPlayClick(_ sender: Any) {
        if audioPlayer != nil {
            audioPlayer.play()
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        print("music")
        print(Bundle.main.path(forResource: "music", ofType: "mp3")!)
        
        let url = URL.init(fileURLWithPath: Bundle.main.path(forResource: "music", ofType: "mp3")!)
        do{
            audioPlayer = try AVAudioPlayer(contentsOf: url)
            audioPlayer.prepareToPlay()
        }catch{
           print(error)
        }
    }

}











