//
//  RedVC.swift
//  ConcussionDetector
//
//  Created by Nikhil on 4/21/17.
//  Copyright © 2017 Nikhil. All rights reserved.
//

import UIKit

class RedVC: UIViewController {

    let user  = Variables()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func yesButton(_ sender: Any) {
            user.concussionYes = "1"
        UserDefaults.standard.set(user.concussionYes, forKey: "Read")
        performSegue(withIdentifier: "brightnessSegue", sender: nil)
    }
    
    @IBAction func noButton(_ sender: Any) {
        user.concussionNo = "1"
        UserDefaults.standard.set(user.concussionNo, forKey: "notRead")
        performSegue(withIdentifier: "brightnessSegue", sender: nil)
    }
//    
//    UserDefaults.standard.set(vari.scoreFirstGame, forKey: "scoreFirstGame")

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
