//
//  EditProfileViewController.swift
//  Wordnomics
//
//  Created by Omninos Android Mac on 5/22/17.
//  Copyright © 2017 Omninos_Solutions. All rights reserved.
//

import UIKit

class EditProfileViewController: UIViewController {
    
    @IBOutlet weak var emailField: UITextField!
    
    @IBOutlet weak var phoneField: UITextField!

    @IBOutlet weak var addressField: UITextField!
    
    @IBOutlet weak var nameField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
         emailField.setLeftPaddingPoints(50)
         phoneField.setLeftPaddingPoints(50)
         addressField.setLeftPaddingPoints(50)
         nameField.setLeftPaddingPoints(50)
       // textField.setRightPaddingPoints(10)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
  
    
    @IBAction func cancel(_ sender: Any) {
        
         _ = self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func save(_ sender: Any) {
        
        let Trail = self.storyboard?.instantiateViewController(withIdentifier: "TasksViewController") as! TasksViewController
        self.navigationController?.pushViewController(Trail, animated: true)
    }
    }
