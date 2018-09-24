//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AVFoundation // audiovisual foundation
import AudioToolbox // audio foundation

class ViewController: UIViewController, AVAudioPlayerDelegate{
    
    var audioPlayer : AVAudioPlayer!
//    var selectedSoundFileName : String = ""
//    let soundArray = ["note1","note2","note3","note4","note5","note6","note7"]
    
//    var player: AVAudioPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }



    @IBAction func notePressed(_ sender: UIButton) {
//        if let soundURL = Bundle.main.url(forResource: "note1", withExtension: "wav") {
//            var mySound: SystemSoundID = 0
//            AudioServicesCreateSystemSoundID(soundURL as CFURL, &mySound)
//            //Play
//            AudioServicesPlaySystemSound(mySound);
//        }
    
        playSound(noteNumber : sender.tag)
        
//        let url = Bundle.main.url(forResource: "note1", withExtension: "wav")!
//        do {
//            player = try AVAudioPlayer(contentsOf: url)
//            guard let player = player else { return }
//            player.prepareToPlay()
//            player.play()
//        } catch let error as NSError {
//            print(error.description)
//        }
//
//        print(sender.tag)
//
//        if sender.tag == 1 {
//            print("play middle C")
//        }
//        else if sender.tag == 2 {
//            print("play D")
//        }
//        else if sender.tag == 3 {
//            print("play E ")
//        }
    }
    
    func playSound(noteNumber : Int) {
        
        let soundURL = Bundle.main.url(forResource: "note\(noteNumber)", withExtension: "wav")
        
        do{
            audioPlayer = try AVAudioPlayer(contentsOf: soundURL!)
        }
        catch{
            print(error)
        }
        audioPlayer.play()
        
        
    }

}

