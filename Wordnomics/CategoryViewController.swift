//
//  CategoryViewController.swift
//  Wordnomics
//
//  Created by Omninos Android Mac on 5/16/17.
//  Copyright © 2017 Omninos_Solutions. All rights reserved.
//

import UIKit

class CategoryViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    
    @IBAction func Teacher(_ sender: Any) {
        let Register = self.storyboard?.instantiateViewController(withIdentifier: "SignUpViewController") as! SignUpViewController
        self.navigationController?.pushViewController(Register, animated: true)
        
    }
    @IBAction func Parent(_ sender: Any) {
        
        let Register = self.storyboard?.instantiateViewController(withIdentifier: "SignUpViewController") as! SignUpViewController
        self.navigationController?.pushViewController(Register, animated: true)
    }
    
    @IBAction func Student(_ sender: Any)
    {
        let Register = self.storyboard?.instantiateViewController(withIdentifier: "SignUpViewController") as! SignUpViewController
        self.navigationController?.pushViewController(Register, animated: true)
    }
    
    @IBAction func other(_ sender: Any) {
        
        let Register = self.storyboard?.instantiateViewController(withIdentifier: "SignUpViewController") as! SignUpViewController
        self.navigationController?.pushViewController(Register, animated: true)
    }
    
    
    @IBAction func backbtn(_ sender: Any) {
        
        _ = self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func Next(_ sender: Any) {
    }
}
