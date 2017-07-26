//
//  ForgotViewController.swift
//  Wordnomics
//
//  Created by Omninos Android Mac on 5/16/17.
//  Copyright © 2017 Omninos_Solutions. All rights reserved.
//

import UIKit

class ForgotViewController: UIViewController {

    @IBOutlet weak var EmailAddress: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
       override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    @IBAction func Send(_ sender: Any) {
        let ForgetPassword = self.storyboard?.instantiateViewController(withIdentifier: "ForgotViewController") as! ForgotViewController
        self.navigationController?.pushViewController(ForgetPassword, animated: true)

    }
    
    @IBAction func newAcount(_ sender: Any) {
        let Register = self.storyboard?.instantiateViewController(withIdentifier: "_LoginViewController") as! _LoginViewController
        self.navigationController?.pushViewController(Register, animated: true)
        
    }
       @IBAction func Back(_ sender: Any) {
        _ = self.navigationController?.popViewController(animated: true)
        
        
    }
    @IBAction func backBtn(_ sender: Any) {
        
         _ = self.navigationController?.popViewController(animated: true)
        
        
    }
    
}
