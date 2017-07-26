//
//  ProfileQuestion2ViewController.swift
//  Wordnomics
//
//  Created by Jarvics  on 29/05/17.
//  Copyright © 2017 Omninos_Solutions. All rights reserved.
//

import UIKit

class ProfileQuestion2ViewController: UIViewController,UIScrollViewDelegate {

    @IBOutlet weak var scrollView: UIScrollView!
    
    @IBOutlet weak var selectionView: UIView!
    
    
    @IBOutlet weak var scrollView1: UIScrollView!
    
    @IBOutlet weak var selectionView1: UIView!
    
    @IBOutlet weak var changeImg: UIImageView!
    
    
    @IBOutlet weak var changeImg1: UIImageView!
    
    @IBOutlet weak var changeImg2: UIImageView!
    
    
    @IBOutlet weak var changeImg3: UIImageView!
    
    @IBOutlet weak var changeImg4: UIImageView!
    
    @IBOutlet weak var changeImg5: UIImageView!
    
    @IBOutlet weak var changeImg6: UIImageView!
    
    @IBOutlet weak var changeImg7: UIImageView!
    
    @IBOutlet weak var changeImg8: UIImageView!
    
    @IBOutlet weak var changeImg9: UIImageView!
    
    
    @IBOutlet weak var changeImg20: UIImageView!
    
    @IBOutlet weak var changeImg21: UIImageView!
    
    @IBOutlet weak var changeImg22: UIImageView!
    
    
    @IBOutlet weak var changeImg23: UIImageView!
    
    @IBOutlet weak var changeImg24: UIImageView!
    
    
    @IBOutlet weak var changeImg25: UIImageView!
    
    
    @IBOutlet weak var changeImg26: UIImageView!
    
    
    @IBOutlet weak var changeImg27: UIImageView!
    
    
    @IBOutlet weak var changeImg28: UIImageView!
    
    @IBOutlet weak var changeImg29: UIImageView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        scrollView.isScrollEnabled=true;
        scrollView.contentSize = CGSize(width: 0 , height: self.selectionView.frame.size.height)
        scrollView.delegate = self
        
        scrollView1.isScrollEnabled=true;
        scrollView1.contentSize = CGSize(width: 0 , height: self.selectionView1.frame.size.height)
        scrollView1.delegate = self

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    

    @IBAction func selection(_ sender: UIButton) {
        if sender.tag==0
        {
            changeImg.image=UIImage(named:"Check")
            changeImg1.image=UIImage(named:"")
            changeImg2.image=UIImage(named:"")
            changeImg3.image=UIImage(named:"")
            
           changeImg4.image=UIImage(named:"")
            changeImg5.image=UIImage(named:"")
            changeImg6.image=UIImage(named:"")
            changeImg7.image=UIImage(named:"")
            changeImg8.image=UIImage(named:"")
           changeImg9.image=UIImage(named:"")
            
            
        }
            
        else if (sender.tag==1)
        {
            changeImg.image=UIImage(named:"")
            changeImg1.image=UIImage(named:"Check")
            changeImg2.image=UIImage(named:"")
            changeImg3.image=UIImage(named:"")
            
            changeImg4.image=UIImage(named:"")
            changeImg5.image=UIImage(named:"")
            changeImg6.image=UIImage(named:"")
            changeImg7.image=UIImage(named:"")
            changeImg8.image=UIImage(named:"")
            changeImg9.image=UIImage(named:"")        }
            
        else  if (sender.tag==2)
        {
            changeImg.image=UIImage(named:"")
            changeImg1.image=UIImage(named:"")
            changeImg2.image=UIImage(named:"Check")
            changeImg3.image=UIImage(named:"")
            
            changeImg4.image=UIImage(named:"")
            changeImg5.image=UIImage(named:"")
            changeImg6.image=UIImage(named:"")
            changeImg7.image=UIImage(named:"")
            changeImg8.image=UIImage(named:"")
            changeImg9.image=UIImage(named:"")
            
        }
        else  if sender.tag==3
        {
            changeImg.image=UIImage(named:"")
            changeImg1.image=UIImage(named:"")
            changeImg2.image=UIImage(named:"")
            changeImg3.image=UIImage(named:"Check")
            
            changeImg4.image=UIImage(named:"")
            changeImg5.image=UIImage(named:"")
            changeImg6.image=UIImage(named:"")
            changeImg7.image=UIImage(named:"")
            changeImg8.image=UIImage(named:"")
            changeImg9.image=UIImage(named:"")
        }
            
        else if sender.tag==4
        {
            changeImg.image=UIImage(named:"")
            changeImg1.image=UIImage(named:"")
            changeImg2.image=UIImage(named:"")
            changeImg3.image=UIImage(named:"")
            
            changeImg4.image=UIImage(named:"Check")
            changeImg5.image=UIImage(named:"")
            changeImg6.image=UIImage(named:"")
            changeImg7.image=UIImage(named:"")
            changeImg8.image=UIImage(named:"")
            changeImg9.image=UIImage(named:"")
        }
            
        else if (sender.tag==5)
        {
            changeImg.image=UIImage(named:"")
            changeImg1.image=UIImage(named:"")
            changeImg2.image=UIImage(named:"")
            changeImg3.image=UIImage(named:"")
            
            changeImg4.image=UIImage(named:"")
            changeImg5.image=UIImage(named:"Check")
            changeImg6.image=UIImage(named:"")
            changeImg7.image=UIImage(named:"")
            changeImg8.image=UIImage(named:"")
            changeImg9.image=UIImage(named:"")
            
        }
            
        else  if (sender.tag==6)
        {
            changeImg.image=UIImage(named:"")
            changeImg1.image=UIImage(named:"")
            changeImg2.image=UIImage(named:"")
            changeImg3.image=UIImage(named:"")
            
            changeImg4.image=UIImage(named:"")
            changeImg5.image=UIImage(named:"")
            changeImg6.image=UIImage(named:"Check")
            changeImg7.image=UIImage(named:"")
            changeImg8.image=UIImage(named:"")
            changeImg9.image=UIImage(named:"")
        }
        else  if sender.tag==7
        {
            changeImg.image=UIImage(named:"")
            changeImg1.image=UIImage(named:"")
            changeImg2.image=UIImage(named:"")
            changeImg3.image=UIImage(named:"")
            
            changeImg4.image=UIImage(named:"")
            changeImg5.image=UIImage(named:"")
            changeImg6.image=UIImage(named:"")
            changeImg7.image=UIImage(named:"Check")
            changeImg8.image=UIImage(named:"")
            changeImg9.image=UIImage(named:"")
            
        }
            
        else if sender.tag==8
        {
            changeImg.image=UIImage(named:"")
            changeImg1.image=UIImage(named:"")
            changeImg2.image=UIImage(named:"")
            changeImg3.image=UIImage(named:"")
            
            changeImg4.image=UIImage(named:"")
            changeImg5.image=UIImage(named:"")
            changeImg6.image=UIImage(named:"")
            changeImg7.image=UIImage(named:"")
            changeImg8.image=UIImage(named:"Check")
            changeImg9.image=UIImage(named:"")
            
        }
            
        else if (sender.tag==9)
        {
            changeImg.image=UIImage(named:"")
            changeImg1.image=UIImage(named:"")
            changeImg2.image=UIImage(named:"")
            changeImg3.image=UIImage(named:"")
            
            changeImg4.image=UIImage(named:"")
            changeImg5.image=UIImage(named:"")
            changeImg6.image=UIImage(named:"")
            changeImg7.image=UIImage(named:"")
            changeImg8.image=UIImage(named:"")
            changeImg9.image=UIImage(named:"Check")
        }
            
            
        else
        {
            
        }
        
    }
    
    
    @IBAction func selection1(_ sender: UIButton) {
        
        if sender.tag==0
        {
            changeImg20.image=UIImage(named:"Check")
            changeImg21.image=UIImage(named:"")
            changeImg22.image=UIImage(named:"")
            changeImg23.image=UIImage(named:"")
            
            changeImg24.image=UIImage(named:"")
            changeImg25.image=UIImage(named:"")
            changeImg26.image=UIImage(named:"")
            changeImg27.image=UIImage(named:"")
            changeImg28.image=UIImage(named:"")
            changeImg29.image=UIImage(named:"")
            
            
        }
            
        else if (sender.tag==1)
        {
            changeImg20.image=UIImage(named:"")
            changeImg21.image=UIImage(named:"Check")
            changeImg22.image=UIImage(named:"")
            changeImg23.image=UIImage(named:"")
            
            changeImg24.image=UIImage(named:"")
            changeImg25.image=UIImage(named:"")
            changeImg26.image=UIImage(named:"")
            changeImg27.image=UIImage(named:"")
            changeImg28.image=UIImage(named:"")
            changeImg29.image=UIImage(named:"")        }
            
        else  if (sender.tag==2)
        {
            changeImg20.image=UIImage(named:"")
            changeImg21.image=UIImage(named:"")
            changeImg22.image=UIImage(named:"Check")
            changeImg23.image=UIImage(named:"")
            
            changeImg24.image=UIImage(named:"")
            changeImg25.image=UIImage(named:"")
            changeImg26.image=UIImage(named:"")
            changeImg27.image=UIImage(named:"")
            changeImg28.image=UIImage(named:"")
            changeImg29.image=UIImage(named:"")
            
        }
        else  if sender.tag==3
        {
            changeImg20.image=UIImage(named:"")
            changeImg21.image=UIImage(named:"")
            changeImg22.image=UIImage(named:"")
            changeImg23.image=UIImage(named:"Check")
            
            changeImg24.image=UIImage(named:"")
            changeImg25.image=UIImage(named:"")
            changeImg26.image=UIImage(named:"")
            changeImg27.image=UIImage(named:"")
            changeImg28.image=UIImage(named:"")
            changeImg29.image=UIImage(named:"")
        }
            
        else if sender.tag==4
        {
            changeImg20.image=UIImage(named:"")
            changeImg21.image=UIImage(named:"")
            changeImg22.image=UIImage(named:"")
            changeImg23.image=UIImage(named:"")
            
            changeImg24.image=UIImage(named:"Check")
            changeImg25.image=UIImage(named:"")
            changeImg26.image=UIImage(named:"")
            changeImg27.image=UIImage(named:"")
            changeImg28.image=UIImage(named:"")
            changeImg29.image=UIImage(named:"")
        }
            
        else if (sender.tag==5)
        {
            changeImg20.image=UIImage(named:"")
            changeImg21.image=UIImage(named:"")
            changeImg22.image=UIImage(named:"")
            changeImg23.image=UIImage(named:"")
            
            changeImg24.image=UIImage(named:"")
            changeImg25.image=UIImage(named:"Check")
            changeImg26.image=UIImage(named:"")
            changeImg27.image=UIImage(named:"")
            changeImg28.image=UIImage(named:"")
            changeImg29.image=UIImage(named:"")
            
        }
            
        else  if (sender.tag==6)
        {
            changeImg20.image=UIImage(named:"")
            changeImg21.image=UIImage(named:"")
            changeImg22.image=UIImage(named:"")
            changeImg23.image=UIImage(named:"")
            
            changeImg24.image=UIImage(named:"")
            changeImg25.image=UIImage(named:"")
            changeImg26.image=UIImage(named:"Check")
            changeImg27.image=UIImage(named:"")
            changeImg28.image=UIImage(named:"")
            changeImg29.image=UIImage(named:"")
        }
        else  if sender.tag==7
        {
            changeImg20.image=UIImage(named:"")
            changeImg21.image=UIImage(named:"")
            changeImg22.image=UIImage(named:"")
            changeImg23.image=UIImage(named:"")
            
            changeImg24.image=UIImage(named:"")
            changeImg25.image=UIImage(named:"")
            changeImg26.image=UIImage(named:"")
            changeImg27.image=UIImage(named:"Check")
            changeImg28.image=UIImage(named:"")
            changeImg29.image=UIImage(named:"")
            
        }
            
        else if sender.tag==8
        {
            changeImg20.image=UIImage(named:"")
            changeImg21.image=UIImage(named:"")
            changeImg22.image=UIImage(named:"")
            changeImg23.image=UIImage(named:"")
            
            changeImg24.image=UIImage(named:"")
            changeImg25.image=UIImage(named:"")
            changeImg26.image=UIImage(named:"")
            changeImg27.image=UIImage(named:"")
            changeImg28.image=UIImage(named:"Check")
            changeImg29.image=UIImage(named:"")
            
        }
            
        else if (sender.tag==9)
        {
            changeImg20.image=UIImage(named:"")
            changeImg21.image=UIImage(named:"")
            changeImg22.image=UIImage(named:"")
            changeImg23.image=UIImage(named:"")
            
            changeImg24.image=UIImage(named:"")
            changeImg25.image=UIImage(named:"")
            changeImg26.image=UIImage(named:"")
            changeImg27.image=UIImage(named:"")
            changeImg28.image=UIImage(named:"")
            changeImg29.image=UIImage(named:"Check")
        }
            
            
        else
        {
            
        }
        
    }
    
    @IBAction func next(_ sender: UIButton) {
        
        let Register = self.storyboard?.instantiateViewController(withIdentifier: "ProfileQuestion3ViewController") as! ProfileQuestion3ViewController
        self.navigationController?.pushViewController(Register, animated: true)
    }

    @IBAction func back(_ sender: Any) {
        
         _ = self.navigationController?.popViewController(animated: true)
    }
}
