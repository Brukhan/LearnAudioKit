//
//  ViewController.swift
//  HelloAudioKit
//
//  Created by Tatiana Brukhan on 10/5/16.
//  Copyright © 2016 Tatiana Brukhan. All rights reserved.
//

import UIKit
import AudioKit

class ViewController: UIViewController {

    var oscillator = AKOscillator()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        AudioKit.output = oscillator
        AudioKit.start()
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func toggleSound(sender: AnyObject) {
        if oscillator.isPlaying {
            oscillator.stop()
            sender.setTitle("Play Sine Wave", for: .normal)
        } else {
            oscillator.amplitude = random(0.5, 1)
            oscillator.frequency = random(220, 880)
            oscillator.start()
            sender.setTitle("Stop Sine Wave at \(Int(oscillator.frequency))Hz", for: .normal)
        }
    }

}

