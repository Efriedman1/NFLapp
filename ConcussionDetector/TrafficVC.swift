//
//  ViewController.swift
//  ConcussionDetector
//
//  Created by Nikhil on 4/17/17.
//  Copyright © 2017 Nikhil. All rights reserved.
//

import UIKit

class TrafficVC: UIViewController {
    
    @IBOutlet weak var trafficLight: UIImageView!
    @IBOutlet weak var counterLabel: UILabel!

    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var startStopButton: UIButton!

    
    var timer = Timer()
    var scoreTimer = Timer()
    
    var timerInt = 0
    var scoreInt = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        scoreInt = 0
        counterLabel.text = String(scoreInt)
        
    }

    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
    @IBAction func startStop(_ sender: Any) {
        if scoreInt == 0 {
            
            timerInt = 3
            
            trafficLight.image = UIImage(named: "TrafficLight")
            
            timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(TrafficVC.updateCounter), userInfo: nil, repeats: true)
            
            startStopButton.isEnabled = false
            startStopButton.setTitle("", for: [])
            
            scoreInt = 0
            counterLabel.text = String(scoreInt)
            
        } else {
            
            scoreTimer.invalidate()
            
        }
        
        if timerInt == 0 {
            scoreInt = 0
            startStopButton.setTitle("Restart", for: [])
            
        }
        

    }
    

    
    
    
    func updateCounter() {
        
        timerInt -= 1
        
        if timerInt == 2 {
            
            trafficLight.image = UIImage(named: "TrafficLight3")
            
        } else if timerInt == 1 {
            
            trafficLight.image = UIImage(named: "TrafficLight2")
            
            startStopButton.setTitle("Stop", for: [])
            
            
        } else if timerInt == 0 {
            
            trafficLight.image = UIImage(named: "TrafficLight1")
            
            timer.invalidate()
            
            startStopButton.isEnabled = true
            
            scoreTimer = Timer.scheduledTimer(timeInterval: 0.0001, target: self, selector: #selector(TrafficVC.updateScoreTimer), userInfo: nil, repeats: true)
            
        }
        
        
    }
    
    let vari  = Variables()
    func  updateScoreTimer() {
        
        scoreInt += 1
        counterLabel.text = String(scoreInt)
        vari.scoreFirstGame = "\(counterLabel.text!)"
        UserDefaults.standard.set(vari.scoreFirstGame, forKey: "scoreFirstGame")
        nextButton.isHidden = false
    }
    
    @IBAction func nextButtonPressed(_ sender: Any) {
        performSegue(withIdentifier: "readSegue", sender: nil)
    }
    
    
}
