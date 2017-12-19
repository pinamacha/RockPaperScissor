//
//  GameViewController.swift
//  RockPaperScissor
//
//  Created by Ravi Pinamacha on 6/8/17.
//  Copyright © 2017 Ravi Pinamacha. All rights reserved.
//

import UIKit

class GameViewController: UIViewController {

   //outlets for two players
    @IBOutlet weak var playerOne: UIButton!
    @IBOutlet weak var playerTwo: UIButton!
    
    //player selection buttons
    @IBOutlet weak var rock: UIButton!
    @IBOutlet weak var scissor: UIButton!
    @IBOutlet weak var paper: UIButton!
    
    //outlet for player bottom images display when player seletion happen regardingly
    @IBOutlet weak var oneImage: UIImageView!
    @IBOutlet weak var twoImage: UIImageView!
    @IBOutlet weak var whoWins: UILabel!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        view.backgroundColor = UIColor(red: 240/255.0, green: 240/255.0, blue: 240/255.0, alpha: 1.0)
        rock.isHidden = true
        scissor.isHidden = true
        paper.isHidden  = true
        
      }
  
   
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    

    @IBAction func playerOneClicked(_ sender: UIButton) {
        
        rock.isHidden = false
        paper.isHidden = false
        scissor.isHidden = false
        
       playerTwo.isEnabled = false
        
    }
    @IBAction func playerTwoClicked(_ sender: UIButton) {
       
            rock.isHidden = false
            paper.isHidden = false
            scissor.isHidden = false
            
           playerOne.isEnabled = false
      
    }
    @IBAction func rockclick(_ sender: UIButton) {
       
        if playerTwo.isEnabled == false {
                    rock.isHidden = true
                    scissor.isHidden = true
                    paper.isHidden  = true
                    oneImage.image = #imageLiteral(resourceName: "rocksamll")
                    playerTwo.isEnabled = true
         
        }else if playerOne.isEnabled == false {
                    rock.isHidden = true
                    scissor.isHidden = true
                    paper.isHidden  = true
                    twoImage.image = #imageLiteral(resourceName: "rocksamll")
                    playerOne.isEnabled = true
            
        }
       
        
    }
    @IBAction func scissorclick(_ sender: UIButton) {
        if playerTwo.isEnabled == false {
            rock.isHidden = true
            scissor.isHidden = true
            paper.isHidden  = true
            oneImage.image = #imageLiteral(resourceName: "scissorsmall")
            playerTwo.isEnabled = true
          
        }else if playerOne.isEnabled == false {
            rock.isHidden = true
            scissor.isHidden = true
            paper.isHidden  = true
            twoImage.image = #imageLiteral(resourceName: "scissorsmall")
            playerOne.isEnabled = true
            
        }
        
    }
    @IBAction func paperclick(_ sender: UIButton) {
        if playerTwo.isEnabled == false {
            rock.isHidden = true
            scissor.isHidden = true
            paper.isHidden  = true
            oneImage.image = #imageLiteral(resourceName: "papersmall")
        playerTwo.isEnabled = true
           
        }else if playerOne.isEnabled == false {
            rock.isHidden = true
            scissor.isHidden = true
            paper.isHidden  = true
            twoImage.image = #imageLiteral(resourceName: "papersmall")
            playerOne.isEnabled = true
               
        }
       
    }
    
    

    @IBAction func playClicked(_ sender: UIButton) {
//    if(oneImage.image == #imageLiteral(resourceName: "rocksamll")){
//
//            if (twoImage.image == #imageLiteral(resourceName: "papersmall")) {
//                    whoWins.text = "Player Two Wins"
//                } else if (twoImage.image == #imageLiteral(resourceName: "scissorsmall")){
//                    whoWins.text = "Player one Wins"
//                }else {
//                whoWins.text = "Draw"
//                }
//
//    } else if(twoImage.image == #imageLiteral(resourceName: "rocksamll")) {
//
//            if (oneImage.image == #imageLiteral(resourceName: "papersmall")){
//                    whoWins.text = "Player one Wins"
//                } else if (oneImage.image == #imageLiteral(resourceName: "scissorsmall")){
//                    whoWins.text = "Player two Wins"
//                }else {
//                whoWins.text = "Draw"
//                }
//
//    }
        
        if  (oneImage.image == #imageLiteral(resourceName: "rocksamll") && twoImage.image == #imageLiteral(resourceName: "rocksamll")) ||
            (oneImage.image == #imageLiteral(resourceName: "papersmall") && twoImage.image == #imageLiteral(resourceName: "papersmall")) ||
            (oneImage.image == #imageLiteral(resourceName: "scissorsmall") && twoImage.image == #imageLiteral(resourceName: "scissorsmall"))
        {
            whoWins.text = "Draw"
            
        }else if(oneImage.image == #imageLiteral(resourceName: "rocksamll") && twoImage.image == #imageLiteral(resourceName: "papersmall")) {
            
            whoWins.text = "Player Two Wins"
            
        }else if(oneImage.image == #imageLiteral(resourceName: "rocksamll") && twoImage.image == #imageLiteral(resourceName: "scissorsmall")) {
            
            whoWins.text = "Player One Wins"
            
        }else if(oneImage.image == #imageLiteral(resourceName: "papersmall") && twoImage.image == #imageLiteral(resourceName: "rocksamll")) {
            
            whoWins.text = "Player One Wins"
            
        }else if(oneImage.image == #imageLiteral(resourceName: "papersmall") && twoImage.image == #imageLiteral(resourceName: "scissorsmall")) {
            
            whoWins.text = "Player Two Wins"
            
        }
        else if(oneImage.image == #imageLiteral(resourceName: "scissorsmall") && twoImage.image == #imageLiteral(resourceName: "papersmall")) {
            
            whoWins.text = "Player One Wins"
            
        }else if(oneImage.image == #imageLiteral(resourceName: "scissorsmall") && twoImage.image == #imageLiteral(resourceName: "rocksamll"))  {
            
            whoWins.text = "Player Two Wins"
            
        }
    }
   
    //when new game button clickes
    @IBAction func newGameClicked(_ sender: Any) {
        
        rock.isHidden = true
        scissor.isHidden = true
        paper.isHidden = true
        
        oneImage.image = nil
        twoImage.image = nil
        
        whoWins.text = "Who Wins?"
//      self.viewDidLoad()
//      self.navigationController.pushViewController(viewControllerToPush, animated:YES)
       
    }

    /*
    // MARK: - Navigationse

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
