//
//  ViewController.swift
//  Xylophone
//
//  Created by Yuweh on 27/01/2016.
//  Copyright © 2017 Yuweh. All rights reserved.
//

import UIKit

// under Test 2
import AudioToolbox

//// under Test 1
//import AVFoundation

class ViewController: UIViewController{
    
    
//// under Test 1
//    var audioPlayer = AVAudioPlayer()
//    var player: AVAudioPlayer?

    override func viewDidLoad() {
        super.viewDidLoad()
    }



    @IBAction func notePressed(_ sender: UIButton) {
        
        if let soundURL = Bundle.main.url(forResource: "note1", withExtension: "wav") {
            var mySound: SystemSoundID = 0
            AudioServicesCreateSystemSoundID(soundURL as CFURL, &mySound);
            
            //PLAY
            AudioServicesPlaySystemSound(mySound)
        }
        
        
        
//        // under Test 1
//        let url = Bundle.main.url(forResource: "note1", withExtension: "wav")!
//        print(sender.tag)
//
//        do {
//            player = try AVAudioPlayer(contentsOf: url)
//            guard let player = player else { return }
//
//            player.prepareToPlay()
//            player.play()
//        } catch let error as Error {
//            print(error)
//        }
        
    }
    
  

}

