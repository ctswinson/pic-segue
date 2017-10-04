//
//  displayPix.swift
//  Assignment1
//
//  Created by Christopher Swinson on 9/7/17.
//  Copyright © 2017 AppCoda. All rights reserved.
//

import UIKit

class displayPix: UIViewController {

    @IBOutlet var label: UILabel!
    
    @IBOutlet var show: UIImageView!
    
    var clickedPic = String()
    
    var gamePad = ["dualshock.jpg","xboxcontroller.jpg","joycon.jpg"]
    
    var gameConsole = ["ps4.jpg","xbox.jpg","switch.jpg"]
    
    var consoleLabel = ["Playstation 4","Xbox One","Nintendo Switch"]
    
    var controllerLabel = ["Sony-Dualshock","Microsoft-Xbox", "Nintendo-Joycon"]
    
    var picsChosen = [""]
    
    var labelsChosen = [""]
    
    var whichArray = 0
    
    var currentlabel = 0
    
    @IBAction func next() {whichArray+=1
        currentlabel+=1
        showPico()
    }
    
    @IBAction func previous() {whichArray-=1
        currentlabel-=1
        showPico()
    }
    
    func showPico(){if (whichArray == picsChosen.count) {whichArray = 0}
        if (whichArray < 0) {whichArray = picsChosen.count - 1}
        if (currentlabel == picsChosen.count) {currentlabel = 0}
        if (currentlabel < 0) {currentlabel = picsChosen.count - 1}
        let displayPic = UIImage(named: picsChosen[currentlabel])
        show.image = displayPic
        label.text = labelsChosen[currentlabel]
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        if whichArray == 0 {picsChosen = gamePad; labelsChosen = controllerLabel}
        else {picsChosen = gameConsole; labelsChosen = consoleLabel}
        showPico()
        // Do any additional setup after loading the view.
    }

   

}
