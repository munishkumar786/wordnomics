//
//  AddNewStudViewController.swift
//  Wordnomics
//
//  Created by Omninos Android Mac on 5/22/17.
//  Copyright © 2017 Omninos_Solutions. All rights reserved.
//

import UIKit

class AddNewStudViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func cancel(_ sender: Any) {
        
        _ = self.navigationController?.popViewController(animated: true)
    }


}
