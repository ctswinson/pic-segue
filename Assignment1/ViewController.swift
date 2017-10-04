//
//  ViewController.swift
//  Assignment1
//
//  Created by Christopher Swinson on 9/7/17.
//  Copyright © 2017 AppCoda. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   
    var clickedPic = String()
    
    var gamePad = ["dualshock.jpg","xboxcontroller.jpg","joycon.jpg"]
    var gameConsole = ["ps4.jpg","xbox.jpg","switch.jpg"]
    
    var whichVG = 0
    
    @IBAction func VGController() {whichVG = 0
    }
    
    @IBAction func VGConsole() {whichVG = 1
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {let destinationView = segue.destination as! displayPix
        if segue.identifier == "gameOne" {destinationView.whichArray = 0} else {destinationView.whichArray = 1}
     
    }

}

