//
//  ProfileQuestion3ViewController.swift
//  Wordnomics
//
//  Created by Jarvics  on 30/05/17.
//  Copyright © 2017 Omninos_Solutions. All rights reserved.
//

import UIKit

class ProfileQuestion3ViewController: UIViewController {

    @IBOutlet weak var changeImg1: UIImageView!
    
    @IBOutlet weak var changeImg2: UIImageView!
    
    @IBOutlet weak var changeImg3: UIImageView!
    
    @IBOutlet weak var changeImg4: UIImageView!
    
    @IBOutlet weak var changeImg5: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
            }
    

    @IBAction func selection(_ sender: UIButton) {
        
        if sender.tag==0
        {
            changeImg1.image=UIImage(named:"Check")
            changeImg2.image=UIImage(named:"")
            changeImg3.image=UIImage(named:"")
             changeImg4.image=UIImage(named:"")
           changeImg5.image=UIImage(named:"")
        }
            
        else if (sender.tag==1)
        {
            changeImg1.image=UIImage(named:"")
            changeImg2.image=UIImage(named:"Check")
            changeImg3.image=UIImage(named:"")
            changeImg4.image=UIImage(named:"")
            changeImg5.image=UIImage(named:"")
        }
            
        else  if (sender.tag==2)
        {
            changeImg1.image=UIImage(named:"")
            changeImg2.image=UIImage(named:"")
            changeImg3.image=UIImage(named:"Check")
            changeImg4.image=UIImage(named:"")
            changeImg5.image=UIImage(named:"")
        }
        else  if sender.tag==3
        {
            changeImg1.image=UIImage(named:"")
            changeImg2.image=UIImage(named:"")
            changeImg3.image=UIImage(named:"")
            changeImg4.image=UIImage(named:"Check")
            changeImg5.image=UIImage(named:"")
        }
           
        else  if sender.tag==4
        {
            changeImg1.image=UIImage(named:"")
            changeImg2.image=UIImage(named:"")
            changeImg3.image=UIImage(named:"")
            changeImg4.image=UIImage(named:"")
            changeImg5.image=UIImage(named:"Check")
        }

        else
        {
            
        }
    }
    
    
    @IBAction func back(_ sender: Any) {
        
         _ = self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func save(_ sender: Any) {
        
        let Trail = self.storyboard?.instantiateViewController(withIdentifier: "TasksViewController") as! TasksViewController
        self.navigationController?.pushViewController(Trail, animated: true)
    }
}
