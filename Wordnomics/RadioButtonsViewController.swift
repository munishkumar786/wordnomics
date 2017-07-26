//
//  RadioButtonsViewController.swift
//  Wordnomics
//
//  Created by Jarvics  on 29/05/17.
//  Copyright © 2017 Omninos_Solutions. All rights reserved.
//

import UIKit

class RadioButtonsViewController: UIViewController,UIScrollViewDelegate {

    @IBOutlet weak var scrollView: UIScrollView!
    
    @IBOutlet weak var selectionView: UIView!
    
    @IBOutlet weak var radiobtn1: UIButton!
    
    @IBOutlet weak var radioBtn2: UIButton!
    
    @IBOutlet weak var radioBtn3: UIButton!
    
    @IBOutlet weak var radioBtn4: UIButton!
    
    
    @IBOutlet weak var radioBtn21: UIButton!
    
    @IBOutlet weak var radiobtn22: UIButton!
    
    @IBOutlet weak var radioBtn23: UIButton!
    
    @IBOutlet weak var radioBtn24: UIButton!
    
    @IBOutlet weak var radioBtn25: UIButton!
    
    @IBOutlet weak var radioBtn26: UIButton!
    
    @IBOutlet weak var radioBtn27: UIButton!
    
    @IBOutlet weak var radioBtn28: UIButton!
    
    @IBOutlet weak var radioBtn29: UIButton!
    
    @IBOutlet weak var radioBtn30: UIButton!
    
    
    @IBOutlet weak var radioBtn31: UIButton!
    
    @IBOutlet weak var radioBtn32: UIButton!
    
    @IBOutlet weak var radioBtn33: UIButton!
    
    @IBOutlet weak var radioBtn34: UIButton!
    
    @IBOutlet weak var radioBtn35: UIButton!
    
    @IBOutlet weak var radioBtn36: UIButton!
    
    @IBOutlet weak var radioBtn37: UIButton!
    
    @IBOutlet weak var radioBtn38: UIButton!
    
    @IBOutlet weak var radioBtn39: UIButton!
    
    @IBOutlet weak var radioBtn40: UIButton!
    
    
    @IBOutlet weak var radioBtn41: UIButton!
    
    @IBOutlet weak var radioBtn42: UIButton!
    
    @IBOutlet weak var radioBtn43: UIButton!
    
    @IBOutlet weak var radioBtn44: UIButton!
    
    @IBOutlet weak var radioBtn45: UIButton!
    
    
    @IBOutlet weak var radioBtn46: UIButton!
    
    @IBOutlet weak var radioBtn47: UIButton!
    
    @IBOutlet weak var radioBtn48: UIButton!
    
    @IBOutlet weak var radioBtn49: UIButton!
    
    @IBOutlet weak var radioBtn50: UIButton!
    
    
    @IBOutlet weak var radioBtn51: UIButton!
    
    @IBOutlet weak var radioBtn52: UIButton!
    
    @IBOutlet weak var radioBtn53: UIButton!
    
    @IBOutlet weak var radioBtn54: UIButton!
    
    @IBOutlet weak var radioBtn55: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        scrollView.isScrollEnabled=true;
        scrollView.contentSize = CGSize(width: self.view.frame.size.width , height: self.selectionView.frame.size.height)
        scrollView.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func select1(_ sender: UIButton) {
        
        radiobtn1.isSelected=false;
        radioBtn2.isSelected=false;
        radioBtn3.isSelected=false;
        radioBtn4.isSelected=false;
        
        if sender.tag==0
        {
            if sender.isSelected==true
            {
                sender.isSelected=false;
            }
            
        
        
        else{
            sender.isSelected=true;
        }
        
        }
     else if(sender.tag==1)
        {
            if sender.isSelected==true
            {
                sender.isSelected=false;
            }
    else{
            sender.isSelected=true;
        }
        
        }
            
        else if(sender.tag==2)
        {
            if sender.isSelected==true
            {
                sender.isSelected=false;
            }
            
        
            
        else{
            sender.isSelected=true;
        }
        }

        else if(sender.tag==3)
        {
            if sender.isSelected==true
            {
                sender.isSelected=false;
            }
            
        
            
        else{
            sender.isSelected=true;
        }
        }
        else{
            
        }
    }
    
    @IBAction func select2(_ sender: UIButton) {
        
        radioBtn21.isSelected=false;
        radiobtn22.isSelected=false;
        radioBtn23.isSelected=false;
        radioBtn24.isSelected=false;
        radioBtn25.isSelected=false;
        radioBtn26.isSelected=false;
        radioBtn27.isSelected=false;
        radioBtn28.isSelected=false;
        radioBtn29.isSelected=false;
        radioBtn30.isSelected=false;
        
        if sender.tag==0
        {
            if sender.isSelected==true
            {
                sender.isSelected=false;
            }
                
        else{
                sender.isSelected=true;
            }
            
        }
        else if(sender.tag==1)
        {
            if sender.isSelected==true
            {
                sender.isSelected=false;
            }
            else{
                sender.isSelected=true;
            }
            
        }
            
        else if(sender.tag==2)
        {
            if sender.isSelected==true
            {
                sender.isSelected=false;
            }
                
                
                
            else{
                sender.isSelected=true;
            }
        }
            
        else if(sender.tag==3)
        {
            if sender.isSelected==true
            {
                sender.isSelected=false;
            }
                
                
                
            else{
                sender.isSelected=true;
            }
        }
        else{
            
        }
        
        
        if sender.tag==4
        {
            if sender.isSelected==true
            {
                sender.isSelected=false;
            }
                
                
                
            else{
                sender.isSelected=true;
            }
            
        }
        else if(sender.tag==5)
        {
            if sender.isSelected==true
            {
                sender.isSelected=false;
            }
            else{
                sender.isSelected=true;
            }
            
        }
            
        else if(sender.tag==6)
        {
            if sender.isSelected==true
            {
                sender.isSelected=false;
            }
                
                
                
            else{
                sender.isSelected=true;
            }
        }
            
        else if(sender.tag==7)
        {
            if sender.isSelected==true
            {
                sender.isSelected=false;
            }
                
            else{
                sender.isSelected=true;
            }
        }
            
        else if(sender.tag==8)
        {
            if sender.isSelected==true
            {
                sender.isSelected=false;
            }
                
                
                
            else{
                sender.isSelected=true;
            }
        }
            
        else if(sender.tag==9)
        {
            if sender.isSelected==true
            {
                sender.isSelected=false;
            }
                
                
                
            else{
                sender.isSelected=true;
            }
        }
            


        else{
            
        }
    
    }
    
    @IBAction func select3(_ sender: UIButton) {
        
        radioBtn41.isSelected=false;
        radioBtn42.isSelected=false;
        radioBtn43.isSelected=false;
        radioBtn44.isSelected=false;
        radioBtn45.isSelected=false;
        radioBtn46.isSelected=false;
        radioBtn47.isSelected=false;
        radioBtn48.isSelected=false;
        radioBtn49.isSelected=false;
        radioBtn50.isSelected=false;
        
        
        if sender.tag==0
        {
            if sender.isSelected==true
            {
                sender.isSelected=false;
            }
                
            else{
                sender.isSelected=true;
            }
            
        }
        else if(sender.tag==1)
        {
            if sender.isSelected==true
            {
                sender.isSelected=false;
            }
            else{
                sender.isSelected=true;
            }
            
        }
            
        else if(sender.tag==2)
        {
            if sender.isSelected==true
            {
                sender.isSelected=false;
            }
                
                
                
            else{
                sender.isSelected=true;
            }
        }
            
        else if(sender.tag==3)
        {
            if sender.isSelected==true
            {
                sender.isSelected=false;
            }
                
                
                
            else{
                sender.isSelected=true;
            }
        }
        else{
            
        }
        
        
        if sender.tag==4
        {
            if sender.isSelected==true
            {
                sender.isSelected=false;
            }
                
                
                
            else{
                sender.isSelected=true;
            }
            
        }
        else if(sender.tag==5)
        {
            if sender.isSelected==true
            {
                sender.isSelected=false;
            }
            else{
                sender.isSelected=true;
            }
            
        }
            
        else if(sender.tag==6)
        {
            if sender.isSelected==true
            {
                sender.isSelected=false;
            }
                
                
                
            else{
                sender.isSelected=true;
            }
        }
            
        else if(sender.tag==7)
        {
            if sender.isSelected==true
            {
                sender.isSelected=false;
            }
                
            else{
                sender.isSelected=true;
            }
        }
            
        else if(sender.tag==8)
        {
            if sender.isSelected==true
            {
                sender.isSelected=false;
            }
                
                
                
            else{
                sender.isSelected=true;
            }
        }
            
        else if(sender.tag==9)
        {
            if sender.isSelected==true
            {
                sender.isSelected=false;
            }
                
                
                
            else{
                sender.isSelected=true;
            }
        }
            
            
        else{
            
        }
        
    }
    
    
    @IBAction func select4(_ sender: UIButton) {
        
        radioBtn41.isSelected=false;
        radioBtn42.isSelected=false;
        radioBtn43.isSelected=false;
        radioBtn44.isSelected=false;
        radioBtn45.isSelected=false;
        radioBtn46.isSelected=false;
        radioBtn47.isSelected=false;
        radioBtn48.isSelected=false;
        radioBtn49.isSelected=false;
        radioBtn50.isSelected=false;
        
        
        if sender.tag==0
        {
            if sender.isSelected==true
            {
                sender.isSelected=false;
            }
                
            else{
                sender.isSelected=true;
            }
            
        }
        else if(sender.tag==1)
        {
            if sender.isSelected==true
            {
                sender.isSelected=false;
            }
            else{
                sender.isSelected=true;
            }
            
        }
            
        else if(sender.tag==2)
        {
            if sender.isSelected==true
            {
                sender.isSelected=false;
            }
                
                
                
            else{
                sender.isSelected=true;
            }
        }
            
        else if(sender.tag==3)
        {
            if sender.isSelected==true
            {
                sender.isSelected=false;
            }
                
                
                
            else{
                sender.isSelected=true;
            }
        }
        else{
            
        }
        
        
        if sender.tag==4
        {
            if sender.isSelected==true
            {
                sender.isSelected=false;
            }
                
                
                
            else{
                sender.isSelected=true;
            }
            
        }
        else if(sender.tag==5)
        {
            if sender.isSelected==true
            {
                sender.isSelected=false;
            }
            else{
                sender.isSelected=true;
            }
            
        }
            
        else if(sender.tag==6)
        {
            if sender.isSelected==true
            {
                sender.isSelected=false;
            }
                
                
                
            else{
                sender.isSelected=true;
            }
        }
            
        else if(sender.tag==7)
        {
            if sender.isSelected==true
            {
                sender.isSelected=false;
            }
                
            else{
                sender.isSelected=true;
            }
        }
            
        else if(sender.tag==8)
        {
            if sender.isSelected==true
            {
                sender.isSelected=false;
            }
                
                
                
            else{
                sender.isSelected=true;
            }
        }
            
        else if(sender.tag==9)
        {
            if sender.isSelected==true
            {
                sender.isSelected=false;
            }
                
                
                
            else{
                sender.isSelected=true;
            }
        }
            
            
        else{
            
        }
        
    }

    @IBAction func select5(_ sender: UIButton) {
        
        radioBtn51.isSelected=false;
        radioBtn52.isSelected=false;
        radioBtn53.isSelected=false;
        radioBtn54.isSelected=false;
        radioBtn55.isSelected=false;
        
        
        if sender.tag==0
        {
            if sender.isSelected==true
            {
                sender.isSelected=false;
            }
                
                
                
            else{
                sender.isSelected=true;
            }
            
        }
        else if(sender.tag==1)
        {
            if sender.isSelected==true
            {
                sender.isSelected=false;
            }
            else{
                sender.isSelected=true;
            }
            
        }
            
        else if(sender.tag==2)
        {
            if sender.isSelected==true
            {
                sender.isSelected=false;
            }
                
                
                
            else{
                sender.isSelected=true;
            }
        }
            
        else if(sender.tag==3)
        {
            if sender.isSelected==true
            {
                sender.isSelected=false;
            }
                
                
                
            else{
                sender.isSelected=true;
            }
        }
            
        else if(sender.tag==4)
        {
            if sender.isSelected==true
            {
                sender.isSelected=false;
            }
                
                
                
            else{
                sender.isSelected=true;
            }
        }
        else{
            
        }
    }

}

