//
//  SignInViewController.swift
//  Wordnomics
//
//  Created by Omninos Android Mac on 5/17/17.
//  Copyright © 2017 Omninos_Solutions. All rights reserved.
//

import UIKit
import FBSDKCoreKit
import FBSDKLoginKit
import FBSDKShareKit
import GoogleSignIn
import Google


class SignInViewController: UIViewController,UITextFieldDelegate,FBSDKLoginButtonDelegate,GIDSignInUIDelegate {

    
    @IBOutlet weak var signInButton: GIDSignInButton!
    
    @IBOutlet weak var SignInView: UIView!
    
    @IBOutlet weak var signIn: UIButton!
    @IBOutlet weak var SignUp: UIButton!
    
    @IBOutlet weak var email: UITextField!
    
    @IBOutlet weak var password: UITextField!
    
    @IBOutlet weak var scoll: UIScrollView!
    
    @IBOutlet weak var signupView: UIView!
    
    @IBOutlet var signinView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //fb
        let loginButton = FBSDKLoginButton()
        loginButton.delegate = self
        loginButton.frame = CGRect(x: 1000, y: 529, width: 130, height: 40)
        loginButton.readPermissions = ["email","user_friends"]
        self.view.addSubview(loginButton)
        
        
        //google+
         GIDSignIn.sharedInstance().uiDelegate = self
        

       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    //facebook
    func loginButton(_ loginButton: FBSDKLoginButton!, didCompleteWith result: FBSDKLoginManagerLoginResult!, error: Error!) {
        
        let StartPage = self.storyboard?.instantiateViewController(withIdentifier: "MenuViewController") as! MenuViewController
        self.navigationController?.pushViewController(StartPage, animated: true)

        print("User Logged In")
    }
    
    func loginButtonDidLogOut(_ loginButton: FBSDKLoginButton!) {
        print("User Logged Out")
    }
   
    @IBAction func googlePlusBtn(_ sender: Any) {
        
          GIDSignIn.sharedInstance().signIn()
    }

    @IBAction func SignUp(_ sender: Any) {
        
      /*  let Register = self.storyboard?.instantiateViewController(withIdentifier: "SignUpViewController") as! SignUpViewController
        self.navigationController?.pushViewController(Register, animated: true)  */
        
        UIView.animate(withDuration: 0.4, animations: {
            self.signupView.frame.origin.x = 0;
        
        
    })
        
    }
    
    @IBAction func signinViewBtn(_ sender: Any) {
        
        
        UIView.animate(withDuration: 0.4, animations: {
            self.signupView.frame.origin.x = 380;
            
            
        })

        
    }
    
    @IBAction func Forget(_ sender: Any) {
        let Forgot = self.storyboard?.instantiateViewController(withIdentifier: "ForgotViewController") as! ForgotViewController
        self.navigationController?.pushViewController(Forgot, animated: true)
        
    }
    
    
    @IBAction func SignIn(_ sender: Any) {
        
        if(email.text!.isEmpty || (password.text?.isEmpty)!)
        {
            let alert = UIAlertController(title: "Invalid", message: "Please enter your email and password", preferredStyle: UIAlertControllerStyle.alert)
            
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
        
        
            
        else{
        let StartPage = self.storyboard?.instantiateViewController(withIdentifier: "MenuViewController") as! MenuViewController
        self.navigationController?.pushViewController(StartPage, animated: true)
    }
}
    @IBAction func back(_ sender: Any) {
        
         _ = self.navigationController?.popViewController(animated: true)
    }

    
    
    func validateEmail(enteredEmail:String) -> Bool {
        
        let emailFormat = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailPredicate = NSPredicate(format:"SELF MATCHES %@", emailFormat)
        return emailPredicate.evaluate(with: enteredEmail)
        
    }
    func isPasswordValid(_ password : String) -> Bool{
        let passwordTest = NSPredicate(format: "SELF MATCHES %@", "^(?=.*[a-z])(?=.*[$@$#!%*?&])[A-Za-z\\d$@$#!%*?&]{6,}")
        return passwordTest.evaluate(with: password)
    }
    
    
    @IBAction func signin(_ sender: UISegmentedControl) {
        
        if sender.selectedSegmentIndex==0 {
            
            let Forgot = self.storyboard?.instantiateViewController(withIdentifier: "SignUpViewController") as! SignUpViewController
            self.navigationController?.pushViewController(Forgot, animated: true)
    
        }
        
       
    }
}
    
