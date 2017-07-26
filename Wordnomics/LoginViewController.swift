//
//  LoginViewController.swift
//  Wordnomics
//
//  Created by Jarvics  on 02/06/17.
//  Copyright © 2017 Omninos_Solutions. All rights reserved.
//

import UIKit
import FBSDKCoreKit
import FBSDKLoginKit
import FBSDKShareKit
import GoogleSignIn
import Google
import Alamofire

class _LoginViewController: UIViewController,FBSDKLoginButtonDelegate,GIDSignInUIDelegate {

    @IBOutlet var ActivityLoader: UIView!
    
    @IBOutlet weak var userName: UITextField!
    
    @IBOutlet weak var email: UITextField!
    
    @IBOutlet weak var password: UITextField!
    
    @IBOutlet weak var retypePassword: UITextField!
    
    
    @IBOutlet weak var email2: UITextField!
    
    @IBOutlet weak var password2: UITextField!
    
    @IBOutlet weak var signInView: UIView!
    let loginButton = FBSDKLoginButton()
    @IBOutlet weak var signUpView: UIView!
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var googleLogin: GIDSignInButton!
    
    @IBOutlet weak var logoImg: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
ActivityLoader.isHidden = true
        
        logoImg.layer.shadowColor=UIColor.white.cgColor
        
        logoImg.layer.shadowOpacity=20.50
        
         signUpView.isHidden=true;
        
        
         googleLogin.isHidden=true
        loginButton.isHidden=true
        
        //fb
        
        loginButton.delegate = self
        loginButton.frame = CGRect(x:200, y: 529, width: 130, height: 40)
        loginButton.readPermissions = ["email","user_friends"]
        self.view.addSubview(loginButton)
        
        
        //google+
        GIDSignIn.sharedInstance().uiDelegate = self
  }

    
    func loginButton(_ loginButton: FBSDKLoginButton!, didCompleteWith result: FBSDKLoginManagerLoginResult!, error: Error!) {
        
        let StartPage = self.storyboard?.instantiateViewController(withIdentifier: "MenuViewController") as! MenuViewController
        self.navigationController?.pushViewController(StartPage, animated: true)
        
        print("User Logged In")
    }
    
    func loginButtonDidLogOut(_ loginButton: FBSDKLoginButton!) {
        print("User Logged Out")
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
           }
    
    @IBAction func signIn(_ sender: Any) {
        self.email2.text=""
        self.password2.text=""
        signInView.isHidden=false
        signUpView.isHidden=true;
        loginButton.isHidden = true
        imageView.image = UIImage(named:"signIn")
        googleLogin.isHidden=true
}

    func validateEmail(enteredEmail:String) -> Bool {
        
        let emailFormat = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailPredicate = NSPredicate(format:"SELF MATCHES %@", emailFormat)
        return emailPredicate.evaluate(with: enteredEmail)
        
    }
    func isPasswordValid(_ password : String) -> Bool{
        let passwordTest = NSPredicate(format: "SELF MATCHES %@", "^([A-Za-z\\d$@$#!%*?&])[A-Za-z\\d$@$#!%*?&]{6,}")
        return passwordTest.evaluate(with: password)
    }
    
    
    @IBAction func signUp(_ sender: Any) {
        
        
        signUpView.isHidden=false
        signInView.isHidden=true;
        loginButton.isHidden = true
        imageView.image = UIImage(named:"signup")
    }
    
    
    @IBAction func register(_ sender: Any) {
        
       /* signInView.isHidden=false
        signUpView.isHidden=true;
        loginButton.isHidden = false
        imageView.image = UIImage(named:"signIn") */
        
        
        let chkEmail = validateEmail(enteredEmail:email.text!)
         let chkpassword = isPasswordValid2(password.text!)
        
        if(email.text!.isEmpty || (password.text?.isEmpty)! ||  (retypePassword.text?.isEmpty)! || (userName.text?.isEmpty)!)
        {
            let alert = UIAlertController(title: "Invalid", message: "Please enter all fields", preferredStyle: UIAlertControllerStyle.alert)
            
            alert.addAction(UIAlertAction(title:"Ok", style: UIAlertActionStyle.default, handler: nil))
            self.present(alert, animated:true,completion: nil)
        }
        
        else if(!chkEmail)
            
        {
            let alert = UIAlertController(title: "Invalid", message: "Please enter your valid email", preferredStyle: UIAlertControllerStyle.alert)
            
            alert.addAction(UIAlertAction(title:"Ok", style: UIAlertActionStyle.default, handler: nil))
            self.present(alert, animated:true,completion: nil)
        }
        
       
       
       else  if(!chkpassword)
        {
            let alert = UIAlertController(title: "Invalid", message: "Your password is too short", preferredStyle: UIAlertControllerStyle.alert)
            
            alert.addAction(UIAlertAction(title:"Ok", style: UIAlertActionStyle.default, handler: nil))
            self.present(alert, animated:true,completion: nil)
        }
        
     else if(password.text != retypePassword.text)
        {
            let alert = UIAlertController(title: "Invalid", message: "Password didn't match", preferredStyle: UIAlertControllerStyle.alert)
            
            alert.addAction(UIAlertAction(title:"Ok", style: UIAlertActionStyle.default, handler: nil))
            self.present(alert, animated:true,completion: nil)
        }
            
            
        else{
            self.ActivityLoader.isHidden = false

           
      let dict:[String:String] = ["username":userName.text!,"email":email.text!,"password":password.text!,"reg_id":"reg_id","device_type":"ios","login_type":"normal"]
            print(dict)
            GlobalFunctions().alamofire_withMethod("user_register", parameters: dict as NSDictionary, completion: { (result) in
                print(result)
                
                //UserDefaults.set(dict, forKey: "dict")!
                
                if (result as! NSDictionary).value(forKey: "success") as? String == "1" {
                    //
                    //                        let userDefaults = UserDefaults.standard
                    //                        userDefaults.set(result, forKey:"dict")
                    //
                    self.email.text=""
                    self.password.text=""
                    self.userName.text=""
                    self.retypePassword.text=""
                    self.ActivityLoader.isHidden = true

                    self.signInView.isHidden=false
                    self.loginButton.isHidden = true
                    self.signUpView.isHidden=true

                    print(result)
                }else{

                    self.signUpView.isHidden=true
                    self.ActivityLoader.isHidden = false
                }
            })
        }
    }
    
    @IBAction func loginIn(_ sender: Any) {
        

        let chkEmail = validateEmail2(enteredEmail:email2.text!)
        let chkpassword = isPasswordValid2(password2.text!)

        if(email2.text!.isEmpty || (password2.text?.isEmpty)!)
        {
            let alert = UIAlertController(title: "Invalid", message: "Please enter your email and password", preferredStyle: UIAlertControllerStyle.alert)
            
            alert.addAction(UIAlertAction(title:"Ok", style: UIAlertActionStyle.default, handler: nil))
            self.present(alert, animated:true,completion: nil)
        }
            
       // let chkEmail = validateEmail2(enteredEmail:email2.text!)
        
        else if(!chkEmail)
            
        {
            let alert = UIAlertController(title: "Invalid", message: "Please enter your valid email", preferredStyle: UIAlertControllerStyle.alert)
            
            alert.addAction(UIAlertAction(title:"Ok", style: UIAlertActionStyle.default, handler: nil))
            self.present(alert, animated:true,completion: nil)
        }
        
        
      else if(!chkpassword)
        {
            let alert = UIAlertController(title: "Invalid", message: "Your password is too short", preferredStyle: UIAlertControllerStyle.alert)
            
            alert.addAction(UIAlertAction(title:"Ok", style: UIAlertActionStyle.default, handler: nil))
            self.present(alert, animated:true,completion: nil)
        }
            
            
            
        else{
            self.ActivityLoader.isHidden = false

            let dict:[String:String] = ["email":email2.text!,"password":password2.text!,"reg_id":"reg_id","device_type":"ios"]
            print(dict)
            GlobalFunctions().alamofire_withMethod("user_login", parameters: dict as NSDictionary, completion: { (result) in
                print(result)
                
                //UserDefaults.set(dict, forKey: "dict")!
                
                if (result as! NSDictionary).value(forKey: "success") as? String == "1" {
                    //
                    //                        let userDefaults = UserDefaults.standard
                    //                        userDefaults.set(result, forKey:"dict")
                    //
                    self.ActivityLoader.isHidden = true

                    let StartPage = self.storyboard?.instantiateViewController(withIdentifier: "MenuViewController") as! MenuViewController
                    self.navigationController?.pushViewController(StartPage, animated: true)

                    print(result)
                }else{
                    print("eroooor")
                    self.ActivityLoader.isHidden = true

                }
                
            })
            
}
    }
    
    func validateEmail2(enteredEmail:String) -> Bool {
        
        let emailFormat = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailPredicate = NSPredicate(format:"SELF MATCHES %@", emailFormat)
        return emailPredicate.evaluate(with: enteredEmail)
        
    }
    
    func isPasswordValid2(_ password : String) -> Bool{
        let passwordTest = NSPredicate(format: "SELF MATCHES %@", "^([A-Za-z0-9\\d$@$#!%*?&])[A-Za-z0-9\\d$@$#!%*?&]{6,}")
        return passwordTest.evaluate(with: password)
    }
    
    
    @IBAction func forget(_ sender: Any) {
        
        let StartPage = self.storyboard?.instantiateViewController(withIdentifier: "ForgotViewController") as! ForgotViewController
        self.navigationController?.pushViewController(StartPage, animated: true)
    }
    
    @IBAction func back(_ sender: Any) {
        
         _ = self.navigationController?.popViewController(animated: true)
    }
}
