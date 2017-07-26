//
//  NewProfileViewController.swift
//  Wordnomics
//
//  Created by Omninos Android Mac on 5/20/17.
//  Copyright © 2017 Omninos_Solutions. All rights reserved.
//

import UIKit

class NewProfileViewController: UIViewController{


    
    @IBOutlet weak var dropMenu: UITableView!
    
    @IBOutlet weak var tutor: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
       
        
    }
    
   


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    
   
    @IBAction func back(_ sender: Any) {
        _ = self.navigationController?.popViewController(animated: true)
    }

    @IBAction func next(_ sender: Any) {
        
        
        let Register = self.storyboard?.instantiateViewController(withIdentifier: "ProfileQuestionViewController") as! ProfileQuestionViewController
        self.navigationController?.pushViewController(Register, animated: true)
    }
   
}
