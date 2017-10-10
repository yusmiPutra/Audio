//
//  ViewController.swift
//  Audio Only
//
//  Created by Nando Septian Husni on 9/20/17.
//  Copyright © 2017 IMA STUDIO. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    var myAudioPlayer = AVAudioPlayer()
    
    @IBOutlet weak var myVolumeController: UISlider!
    
    @IBAction func pauseAudio(_ sender: Any) {
        //myAudioPlayer.pause()
        
    }
    @IBAction func playAudio(_ sender: Any) {
        //myAudioPlayer.play()
    }
    
    @IBAction func stopAudio(_ sender: Any) {
        //myAudioPlayer.stop()
    }

    @IBAction func controlVolume(_ sender: Any) {
        myAudioPlayer.volume = myVolumeController.value
    }
    override func viewDidLoad() {
        let myFilePathString = Bundle.main.path(forResource: "apple_ring", ofType: "mp3")
        
        if let myFilePathString = myFilePathString
        {
            let myfilePathURl = NSURL(fileURLWithPath: myFilePathString)
            
            do{
                 try myAudioPlayer = AVAudioPlayer(contentsOf: myfilePathURl as URL)
                
                myAudioPlayer.play()
            } catch {
                print("error")
            }
            
        }
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
}

