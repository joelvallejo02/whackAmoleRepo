//
//  ViewController.swift
//  whackAmole
//
//  Created by Vallejo, Joel C on 10/19/20.
//  Copyright © 2020 Vallejo, Joel C. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var screenWidth = 0
    var screenHeight = 0
    var lblScore = UILabel()
    var lblBackground = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let screenBounds: CGRect = UIScreen.main.bounds
        screenWidth = Int(screenBounds.width)
        screenHeight = Int(screenBounds.height)
        
        lblScore.frame = CGRect(x: 0, y: 0, width: (screenHeight/10), height: (screenHeight/10))
        lblScore.text = "0"
        
        view.addSubview(lblScore)
        
        lblBackground.frame = CGRect(x: 0, y: (screenHeight/10), width: screenWidth, height: screenHeight-(screenHeight/10))
        lblBackground.backgroundColor = UIColor.green
        
        view.addSubview(lblBackground)
    }


}

