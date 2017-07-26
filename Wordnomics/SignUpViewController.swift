//
//  SignUpViewController.swift
//  Wordnomics
//
//  Created by Omninos Android Mac on 5/17/17.
//  Copyright © 2017 Omninos_Solutions. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {
    
    
    @IBOutlet weak var email: UITextField!
    
    @IBOutlet weak var password: UITextField!

    @IBOutlet weak var retypePassword: UITextField!
    
    @IBOutlet weak var name: UITextField!
    
    @IBOutlet weak var scroll: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scroll.contentSize=CGSize(width:320,height:820)
        
            }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func SignIn(_ sender: Any) {
        
        let SignIn = self.storyboard?.instantiateViewController(withIdentifier: "SignInViewController") as! SignInViewController
        self.navigationController?.pushViewController(SignIn, animated: true)
        }
    

       
    @IBAction func backbtn(_ sender: Any) {
        
         _ = self.navigationController?.popViewController(animated: true)
    }
    
     //pragma mark: validation
    
    func validateEmail(enteredEmail:String) -> Bool {
        
        let emailFormat = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailPredicate = NSPredicate(format:"SELF MATCHES %@", emailFormat)
        return emailPredicate.evaluate(with: enteredEmail)
        
    }
    func isPasswordValid(_ password : String) -> Bool{
        let passwordTest = NSPredicate(format: "SELF MATCHES %@", "^(?=.*[a-z])(?=.*[$@$#!%*?&])[A-Za-z\\d$@$#!%*?&]{6,}")
        return passwordTest.evaluate(with: password)
    }
 

    
    @IBAction func Register(_ sender: Any)
    {
        
        if(email.text!.isEmpty || (password.text?.isEmpty)! ||  (retypePassword.text?.isEmpty)! || (name.text?.isEmpty)!)
        {
            let alert = UIAlertController(title: "Invalid", message: "Please enter all fields", preferredStyle: UIAlertControllerStyle.alert)
            
            alert.addAction(UIAlertAction(title:"Ok", style: UIAlertActionStyle.default, handler: nil))
            self.present(alert, animated:true,completion: nil)
        }
        
        
        let chkEmail = validateEmail(enteredEmail:email.text!)
        
        
      if(!chkEmail)
            
        {
            let alert = UIAlertController(title: "Invalid", message: "Please enter your valid email", preferredStyle: UIAlertControllerStyle.alert)
            
            alert.addAction(UIAlertAction(title:"Ok", style: UIAlertActionStyle.default, handler: nil))
            self.present(alert, animated:true,completion: nil)
        }
        
        let chkpassword = isPasswordValid(password.text!)
        
      if(!chkpassword)
        {
            let alert = UIAlertController(title: "Invalid", message: "please enter your password with number,alphabet and special character", preferredStyle: UIAlertControllerStyle.alert)
            
            alert.addAction(UIAlertAction(title:"Ok", style: UIAlertActionStyle.default, handler: nil))
            self.present(alert, animated:true,completion: nil)
        }
           
        if(password.text != retypePassword.text)
        {
            let alert = UIAlertController(title: "Invalid", message: "Password didn't match", preferredStyle: UIAlertControllerStyle.alert)
            
            alert.addAction(UIAlertAction(title:"Ok", style: UIAlertActionStyle.default, handler: nil))
            self.present(alert, animated:true,completion: nil)
        }
            
            
        else{
            let StartPage = self.storyboard?.instantiateViewController(withIdentifier: "SignInViewController") as! SignInViewController
            self.navigationController?.pushViewController(StartPage, animated: true)
        }
        
        }

    @IBAction func signUp(_ sender: Any) {
        
        if (sender as AnyObject).selectedSegmentIndex==1 {
            
            let Forgot = self.storyboard?.instantiateViewController(withIdentifier: "SignInViewController") as! SignInViewController
            self.navigationController?.pushViewController(Forgot, animated: true)
            
        }

    }

}
