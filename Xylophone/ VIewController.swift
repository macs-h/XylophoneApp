//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate {
    
    var audioPlayer: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func notePressed(_ sender: UIButton) {
        let noteTag: String = String(sender.tag)
        playSound(noteToPlay: "note" + noteTag)
    }
    
    
    fileprivate func playSound(noteToPlay: String) {
        let soundURL = Bundle.main.url(forResource: noteToPlay, withExtension: "wav")
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: soundURL!)
        } catch {
            print(error)
        }
        
        audioPlayer.play()
    }
    
}

