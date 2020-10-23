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
    var btnMole = UIButton()
    var randomX = 0
    var randomY = 0
    var score = 0
    var timer = Timer()
    
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
        
        btnMole.frame = CGRect(x: (screenWidth/2), y: (screenHeight/10), width: 30, height: 30)
        btnMole.backgroundColor = UIColor.brown
        btnMole.addTarget(self, action: #selector(hitMe(_:)), for: .touchUpInside)
        timer = Timer.scheduledTimer(timeInterval: 4.0, target: self,
        selector: #selector(newMole), userInfo: nil, repeats: false)
        
        view.addSubview(btnMole)
        self.view = view
    }
        @objc func hitMe(_ sender:UIButton!) {
           print("Ouch!")
           score += 10
           btnMole.removeFromSuperview()
            lblScore.text = ("\(score)")
            
            // new mole
            randomX = Int.random(in: 20...(screenWidth - 20) - 30)
            randomY = Int.random(in: 20...(screenHeight - 100))
            btnMole.frame = CGRect(x: randomX, y: randomY, width: 30, height: 30)
            view.addSubview(btnMole)
           
        }
    @objc func newMole(_ sender:UIButton!){
        timer = Timer.scheduledTimer(timeInterval: 4.0, target: self,
        selector: #selector(newMole), userInfo: nil, repeats: false)
        // new mole
        randomX = Int.random(in: 20...(screenWidth - 20) - 30)
        randomY = Int.random(in: 100...(screenHeight - 100))
        btnMole.frame = CGRect(x: randomX, y: randomY, width: 30, height: 30)
        view.addSubview(btnMole)
        
       
    }


}

