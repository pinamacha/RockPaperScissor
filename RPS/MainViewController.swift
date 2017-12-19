//
//  MainViewController.swift
//  RockPaperScissor
//
//  Created by Ravi Pinamacha on 6/8/17.
//  Copyright © 2017 Ravi Pinamacha. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 240/255.0, green: 240/255.0, blue: 240/255.0, alpha: 1.0)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func howToPlayClicked(_ sender: Any) {
        performSegue(withIdentifier: "howToPlay", sender: nil)
    }
    @IBAction func startGameClicked(_ sender: Any) {
        performSegue(withIdentifier: "mainGame", sender: nil)
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
