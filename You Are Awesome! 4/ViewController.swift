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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func messagePressed(_ sender: UIButton) {
        if inspirationLabel.text == "you are awesome!" {
            inspirationLabel.text = "you are great!"
        } else if inspirationLabel.text == "you are great!" {
            inspirationLabel.text = "you are amazing!" 
            } else {
                inspirationLabel.text = "you are awesome!"
            }
    }
    
}

