//
//  MenuViewController.swift
//  Wordnomics
//
//  Created by Omninos Android Mac on 5/16/17.
//  Copyright © 2017 Omninos_Solutions. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
            }
    

    @IBAction func NewTest(_ sender: Any)
    {
        
        
        let Register = self.storyboard?.instantiateViewController(withIdentifier: "FifthLevelViewController") as! FifthLevelViewController
        self.navigationController?.pushViewController(Register, animated: true)
        
    }
    
    
    @IBAction func Resume(_ sender: Any)
    {
        
    }
    
    @IBAction func Progress(_ sender: Any)
    {
        let Register = self.storyboard?.instantiateViewController(withIdentifier: "TasksViewController") as! TasksViewController
        self.navigationController?.pushViewController(Register, animated: true)
    }
    
    @IBAction func Target(_ sender: Any)
    {
        
    }
    
    @IBAction func Read(_ sender: Any)
    {
        
    }
    
    
    @IBAction func backbtn(_ sender: Any) {
        
        _ = self.navigationController?.popViewController(animated: true)
    }
    
        
}
