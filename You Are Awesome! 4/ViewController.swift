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
    var index = -1
    var imageIndex = -1
    let numberOfImages = 42
    @IBOutlet weak var inspirationImage: UIImageView!
    
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
//        var newIndex = -1
        var newIndex: Int // declares but does NOT initialize newIndex
        repeat {
            newIndex = Int.random(in: 0..<messages.count)
        } while index == newIndex
        
        index = newIndex
        inspirationLabel.text = messages[index]
        
        repeat {
            newIndex = Int.random(in: 0..<numberOfImages)
        } while imageIndex == newIndex
        
        imageIndex = newIndex
        inspirationImage.image = UIImage(named: "image\(imageIndex)")
        
    }
}

