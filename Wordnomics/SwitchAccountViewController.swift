//
//  SwitchAccountViewController.swift
//  Wordnomics
//
//  Created by Omninos Android Mac on 5/20/17.
//  Copyright © 2017 Omninos_Solutions. All rights reserved.
//

import UIKit

class SwitchAccountViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    @IBAction func user1(_ sender: Any) {
        
    }

    @IBAction func user2(_ sender: Any) {
        
    }
    

    @IBAction func newUser(_ sender: Any) {
    }
    
    @IBAction func back(_ sender: Any) {
        
         _ = self.navigationController?.popViewController(animated: true)
    }
}
