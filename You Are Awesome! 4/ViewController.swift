//
//  ViewController.swift
//  You Are Awesome! 4
//
//  Created by Mary Otto on 5/24/19.
//  Copyright © 2019 Mary Otto. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    
    @IBOutlet weak var inspirationLabel: UILabel!
    @IBOutlet weak var inspirationImage: UIImageView!
    @IBOutlet weak var soundSwitch: UISwitch!
    var index = -1
    var imageIndex = -1
    var soundIndex = -1
    let numberOfImages = 42
    let numberOfSounds = 5
    var awesomePlayer = AVAudioPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    func nonRepeatingRandom(lastNumber: Int, maxValue: Int) -> Int {
        var newIndex: Int
        repeat {
            newIndex = Int.random(in: 0..<maxValue)
        } while lastNumber == newIndex
        return newIndex
    }
    
    func playSound(soundName: String, audioPlayer: inout AVAudioPlayer) {
        //can we load in the file soundName?
        if let sound = NSDataAsset(name: soundName) {
            do {
                try audioPlayer = AVAudioPlayer(data: sound.data)
                audioPlayer.play()
            } catch {
                //if sound.data is not a valid audio file
                print("ERROR: data in \(soundName) couldn't be played as a sound")
            }
            
        } else {
            //if reading in the NSDataAsset didn't work, tell the developer / report the error
            print("ERROR: file \(soundName) didn't load")
        }
    }
    
    @IBAction func soundSwitchPressed(_ sender: UISwitch) {
        if soundSwitch.isOn == false && soundIndex != -1 {
            awesomePlayer.stop()
        }
    }
    
    @IBAction func messagePressed(_ sender: UIButton) {
        
        let messages = ["you are awesome!",
                        "you are great!",
                        "you are fantastic!",
                        "every moment is a fresh beginning",
                        "you brighten my day!",
                        "you make me smile!",
                        "whereever you go, go with all your heart",
                        "it is never too late to be what you might have been",
                        "tough times never last, but tough people do",
                        "believe and act as if it were impossible to fail",
                        "action is the foundational key to all success",
                        "turn your wounds into wisdom",
                        "don't regret the past, just learn from it",
                        "just keep taking chances and having fun",
                        "to improve is to change; to be perfect is to change often",
                        "kindness is always fashionable, and always welcome",
                        "be happy for this moment. this moment is your life",
                        "if you are too busy to laugh, you are too busy",
                        "it's a helluva start, being able to realize what makes you happy",
                        "you can't cross the sea merely by standing and staring at the water",
                        "aim for the moon. if you miss you may hit a star"]
       
        //show a message
        index = nonRepeatingRandom(lastNumber: index, maxValue: messages.count)
        inspirationLabel.text = messages[index]
       
        //show and image
        imageIndex = nonRepeatingRandom(lastNumber: imageIndex, maxValue: numberOfImages)
        inspirationImage.image = UIImage(named: "image\(imageIndex)")
        
       
        //play a sound
        let soundName = "sound\(soundIndex)"
//        if soundSwitch.isOn == true {
        if soundSwitch.isOn {
            //get a random number to use in our sound file
            soundIndex = nonRepeatingRandom(lastNumber: soundIndex, maxValue: numberOfSounds)
            playSound(soundName: soundName, audioPlayer: &awesomePlayer)
            }
        }
    }



