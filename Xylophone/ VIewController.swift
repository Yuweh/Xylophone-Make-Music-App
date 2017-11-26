//
//  ViewController.swift
//  Xylophone
//
//  Created by Yuweh on 27/01/2016.
//  Copyright © 2017 Yuweh. All rights reserved.
//

import UIKit
//under Test 3
import AVFoundation

//// under Test 2
//import AudioToolbox

//// under Test 1
//import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate {
    
    //var under Test 3
    var audioPlayer : AVAudioPlayer!
    
//    // deprecated on test 3 to complete
//    var selectedSoundFileName : String = ""
    
    let soundArray = ["note1", "note2", "note3", "note4", "note5", "note6", "note7"]
    
//// under Test 1
//    var audioPlayer = AVAudioPlayer()
//    var player: AVAudioPlayer?

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func notePressed(_ sender: UIButton) {
        print(sender.tag)
//        print(selectedSoundFileName)
        playSound(soundFileName: soundArray[sender.tag - 1])
    }
    
    func playSound(soundFileName : String) {
        
        //under Test 3
        let soundURL = Bundle.main.url(forResource: soundFileName, withExtension: "wav")
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: soundURL!)
        }
        catch {
            print(error)
        }
        audioPlayer.play()
        
    }
    
    
    
//        //under Test 2
//        if let soundURL = Bundle.main.url(forResource: "note1", withExtension: "wav") {
//            var mySound: SystemSoundID = 0
//            AudioServicesCreateSystemSoundID(soundURL as CFURL, &mySound);
//
//            //PLAY
//            AudioServicesPlaySystemSound(mySound)
//        }
        
        
        
//        // under Test 1
//        let url = Bundle.main.url(forResource: "note1", withExtension: "wav")!
//
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

