//
//  TasksViewController.swift
//  Wordnomics
//
//  Created by Omninos Android Mac on 5/22/17.
//  Copyright © 2017 Omninos_Solutions. All rights reserved.
//

import UIKit

class TasksViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func cancel(_ sender: Any) {
        let Register = self.storyboard?.instantiateViewController(withIdentifier: "MenuViewController") as! MenuViewController
        self.navigationController?.pushViewController(Register, animated: true)

    }
    
    @IBAction func edit(_ sender: Any) {
        let Register = self.storyboard?.instantiateViewController(withIdentifier: "EditProfileViewController") as! EditProfileViewController
        self.navigationController?.pushViewController(Register, animated: true)
    }
    
    
    @IBAction func completeProfile(_ sender: Any) {
    
     
        let Register = self.storyboard?.instantiateViewController(withIdentifier: "NewProfileViewController") as! NewProfileViewController
        self.navigationController?.pushViewController(Register, animated: true)
    }
}
