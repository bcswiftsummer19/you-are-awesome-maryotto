//
//  ViewController.swift
//  You Are Awesome! 4
//
//  Created by Mary Otto on 5/24/19.
//  Copyright © 2019 Mary Otto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var inspirationLabel: UILabel!
    var index = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func messagePressed(_ sender: UIButton) {
        
        let messages = ["you are awesome!",
                        "you are great!",
                        "you are fantastic!",
                        "when the genius bar needs help, they call you",
                        "you brighten my day!",
                        "you make me smile!"]
        
         inspirationLabel.text = messages.randomElement()! 
        
//        inspirationLabel.text = messages[index]
//        if index == messages.count - 1 {
//            index = 0
//        } else {
//        index = index + 1
//        }
//
//        let message1 = "you are awesome!"
//        let message2 = "you are great!"
//        let message3 = "you are amazing!"
//        if inspirationLabel.text == message1 {
//            inspirationLabel.text = message2
//        } else if inspirationLabel.text == message2 {
//            inspirationLabel.text = message3
//            } else {
//                inspirationLabel.text = message1
//            }
    }
    
}

