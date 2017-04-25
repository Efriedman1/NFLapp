//
//  ViewController.swift
//  ConcussionDetector
//
//  Created by Nikhil on 4/24/17.
//  Copyright © 2017 Nikhil. All rights reserved.
//

import UIKit

class BrightnessVC: UIViewController {


    
    override func viewDidLoad() {
        super.viewDidLoad()

    UIScreen.main.brightness = CGFloat(1.0)
    
        // Do any additional setup after loading the view.
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispoe of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
