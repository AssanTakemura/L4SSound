//
//  ViewController.swift
//  L4SSound
//
//  Created by 竹村明日香 on 2020/09/19.
//  Copyright © 2020 Takemura assan. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet var drumButton: UIButton!
    @IBOutlet var pinanoButton: UIButton!
    @IBOutlet var guitarButton: UIButton!
    
    let drumSoundPlayer = try! AVAudioPlayer(data: NSDataAsset(name: "drumSound")!.data)
    let pinanoSoundPlayer = try! AVAudioPlayer(data: NSDataAsset(name: "pianoSound")!.data)
    let guitarSoundPlayer = try! AVAudioPlayer(data: NSDataAsset(name: "guitarSound")!.data)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func touchDownDrumButton(){
        
        drumButton.setImage(UIImage(named: "drumPlayingImage"), for: .normal)
        drumSoundPlayer.currentTime = 0
        drumSoundPlayer.play()
        
    }
    
    @IBAction func touchDrumButton(){
        
        drumButton.setImage(UIImage(named: "drumImage"), for: .normal)
    }
    
    @IBAction func touchDownPianoButton(){
        
        pinanoButton.setImage(UIImage(named: "pianoPlayingImage"), for: .normal)
        pinanoSoundPlayer.currentTime = 0
        pinanoSoundPlayer.play()
        
    }
    
    @IBAction func touchUpPianoButton(){
        
        pinanoButton.setImage(UIImage(named: "pianoImage"), for: .normal)
        
    }
    
    @IBAction func touchDownGuitarButton(){
        
        guitarButton.setImage(UIImage(named: "guitarPlayingImage"), for: .normal)
        guitarSoundPlayer.currentTime = 0
        guitarSoundPlayer.play()
        
    }
    
    
    @IBAction func touchUpGuitarButton(){
        
        guitarButton.setImage(UIImage(named: "guitarImage"), for: .normal)
        
    }
    
    
    
}

