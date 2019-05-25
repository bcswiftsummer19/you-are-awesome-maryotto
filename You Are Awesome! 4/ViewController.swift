//
//  ViewController.swift
//  You Are Awesome! 4
//
//  Created by Mary Otto on 5/24/19.
//  Copyright © 2019 Mary Otto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var messageLabel: UILabel!
    
    // Code below executes when the app's view first loads
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


    @IBAction func showMessagedPressed(_ sender: UIButton) {
        messageLabel.text="you are awesome!"
       
    }
}

