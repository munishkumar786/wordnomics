//
//  ProfileQuestionViewController.swift
//  Wordnomics
//
//  Created by Jarvics  on 29/05/17.
//  Copyright © 2017 Omninos_Solutions. All rights reserved.
//

import UIKit

class ProfileQuestionViewController: UIViewController,UIScrollViewDelegate{
    
    @IBOutlet weak var scrollView: UIScrollView!
    
   
    @IBOutlet weak var selectionView: UIView!

    var option = NSMutableArray()

    @IBOutlet weak var clickimg: UIImageView!
    @IBOutlet weak var clickImg2: UIImageView!
    @IBOutlet weak var clickImg3: UIImageView!
    @IBOutlet weak var clickImg4: UIImageView!
    
    @IBOutlet weak var clickimg20: UIImageView!
    
    @IBOutlet weak var clicklImg21: UIImageView!
    
    @IBOutlet weak var clickImg22: UIImageView!
   
    @IBOutlet weak var clickImg23: UIImageView!
    
    @IBOutlet weak var clickImg24: UIImageView!
    
    @IBOutlet weak var clickImg25: UIImageView!
    
    @IBOutlet weak var clickImg26: UIImageView!
    
    @IBOutlet weak var clickImg27: UIImageView!
    
    @IBOutlet weak var clickImg28: UIImageView!
    
    @IBOutlet weak var clickImg29: UIImageView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scrollView.isScrollEnabled=true;
        scrollView.contentSize = CGSize(width: 0 , height: self.selectionView.frame.size.height)
        scrollView.delegate = self


       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    


    @IBAction func selection1(_ sender: UIButton) {
        
        if sender.tag==0
        {
            clickimg.image=UIImage(named:"Check")
            clickImg2.image=UIImage(named:"")
            clickImg3.image=UIImage(named:"")
            clickImg4.image=UIImage(named:"")
        }
            
      else if (sender.tag==1)
        {
            clickImg2.image=UIImage(named:"Check")
            clickimg.image=UIImage(named:"")
            clickImg3.image=UIImage(named:"")
            clickImg4.image=UIImage(named:"")
        }
            
      else  if (sender.tag==2)
        {
            clickImg3.image=UIImage(named:"Check")
            clickimg.image=UIImage(named:"")
            clickImg2.image=UIImage(named:"")
            clickImg4.image=UIImage(named:"")
        }
    else  if sender.tag==3
        {
            clickImg4.image=UIImage(named:"Check")
            clickimg.image=UIImage(named:"")
            clickImg2.image=UIImage(named:"")
            clickImg3.image=UIImage(named:"")
        }
        
        else
        {
            
        }
    }
    
    
    @IBAction func selection2(_ sender: UIButton) {
        
        if sender.tag==0
        {
            clickimg20.image=UIImage(named:"Check")
            clicklImg21.image=UIImage(named:"")
            clickImg22.image=UIImage(named:"")
            clickImg23.image=UIImage(named:"")
            
            clickImg24.image=UIImage(named:"")
            clickImg25.image=UIImage(named:"")
            clickImg26.image=UIImage(named:"")
            clickImg27.image=UIImage(named:"")
            clickImg28.image=UIImage(named:"")
            clickImg29.image=UIImage(named:"")
            

        }
            
        else if (sender.tag==1)
        {
            clickimg20.image=UIImage(named:"")
            clicklImg21.image=UIImage(named:"Check")
            clickImg22.image=UIImage(named:"")
            clickImg23.image=UIImage(named:"")
            
            clickImg24.image=UIImage(named:"")
            clickImg25.image=UIImage(named:"")
            clickImg26.image=UIImage(named:"")
            clickImg27.image=UIImage(named:"")
            clickImg28.image=UIImage(named:"")
            clickImg29.image=UIImage(named:"")
        }
            
        else  if (sender.tag==2)
        {
            clickimg20.image=UIImage(named:"")
            clicklImg21.image=UIImage(named:"")
            clickImg22.image=UIImage(named:"Check")
            clickImg23.image=UIImage(named:"")
            
            clickImg24.image=UIImage(named:"")
            clickImg25.image=UIImage(named:"")
            clickImg26.image=UIImage(named:"")
            clickImg27.image=UIImage(named:"")
            clickImg28.image=UIImage(named:"")
            clickImg29.image=UIImage(named:"")
            
        }
        else  if sender.tag==3
        {
            clickimg20.image=UIImage(named:"")
            clicklImg21.image=UIImage(named:"")
            clickImg22.image=UIImage(named:"")
            clickImg23.image=UIImage(named:"Check")
            
            clickImg24.image=UIImage(named:"")
            clickImg25.image=UIImage(named:"")
            clickImg26.image=UIImage(named:"")
            clickImg27.image=UIImage(named:"")
            clickImg28.image=UIImage(named:"")
            clickImg29.image=UIImage(named:"")
                    }
           
       else if sender.tag==4
        {
            clickimg20.image=UIImage(named:"")
            clicklImg21.image=UIImage(named:"")
            clickImg22.image=UIImage(named:"")
            clickImg23.image=UIImage(named:"")
            
            clickImg24.image=UIImage(named:"Check")
            clickImg25.image=UIImage(named:"")
            clickImg26.image=UIImage(named:"")
            clickImg27.image=UIImage(named:"")
            clickImg28.image=UIImage(named:"")
            clickImg29.image=UIImage(named:"")
                   }
            
        else if (sender.tag==5)
        {
            clickimg20.image=UIImage(named:"")
            clicklImg21.image=UIImage(named:"")
            clickImg22.image=UIImage(named:"")
            clickImg23.image=UIImage(named:"")
            
            clickImg24.image=UIImage(named:"")
            clickImg25.image=UIImage(named:"Check")
            clickImg26.image=UIImage(named:"")
            clickImg27.image=UIImage(named:"")
            clickImg28.image=UIImage(named:"")
            clickImg29.image=UIImage(named:"")
            
        }
            
        else  if (sender.tag==6)
        {
            clickimg20.image=UIImage(named:"")
            clicklImg21.image=UIImage(named:"")
            clickImg22.image=UIImage(named:"")
            clickImg23.image=UIImage(named:"")
            
            clickImg24.image=UIImage(named:"")
            clickImg25.image=UIImage(named:"")
            clickImg26.image=UIImage(named:"Check")
            clickImg27.image=UIImage(named:"")
            clickImg28.image=UIImage(named:"")
            clickImg29.image=UIImage(named:"")
            
        }
        else  if sender.tag==7
        {
            clickimg20.image=UIImage(named:"")
            clicklImg21.image=UIImage(named:"")
            clickImg22.image=UIImage(named:"")
            clickImg23.image=UIImage(named:"")
            
            clickImg24.image=UIImage(named:"")
            clickImg25.image=UIImage(named:"")
            clickImg26.image=UIImage(named:"")
            clickImg27.image=UIImage(named:"Check")
            clickImg28.image=UIImage(named:"")
            clickImg29.image=UIImage(named:"")
            
        }
            
       else if sender.tag==8
        {
            clickimg20.image=UIImage(named:"")
            clicklImg21.image=UIImage(named:"")
            clickImg22.image=UIImage(named:"")
            clickImg23.image=UIImage(named:"")
            
            clickImg24.image=UIImage(named:"")
            clickImg25.image=UIImage(named:"")
            clickImg26.image=UIImage(named:"")
            clickImg27.image=UIImage(named:"")
            clickImg28.image=UIImage(named:"Check")
            clickImg29.image=UIImage(named:"")
            
        }
            
        else if (sender.tag==9)
        {
            clickimg20.image=UIImage(named:"")
            clicklImg21.image=UIImage(named:"")
            clickImg22.image=UIImage(named:"")
            clickImg23.image=UIImage(named:"")
            
            clickImg24.image=UIImage(named:"")
            clickImg25.image=UIImage(named:"")
            clickImg26.image=UIImage(named:"")
            clickImg27.image=UIImage(named:"")
            clickImg28.image=UIImage(named:"")
            clickImg29.image=UIImage(named:"Check")
                    }
            
       
        else
        {
            
        }
        }
    
    @IBAction func next(_ sender: Any) {
        
        let Register = self.storyboard?.instantiateViewController(withIdentifier: "ProfileQuestion2ViewController") as! ProfileQuestion2ViewController
        self.navigationController?.pushViewController(Register, animated: true)
    }
    
    @IBAction func back(_ sender: Any) {
         _ = self.navigationController?.popViewController(animated: true)
    }
}
