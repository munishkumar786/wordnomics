//
//  RewardsViewController.swift
//  Wordnomics
//
//  Created by Omninos Android Mac on 5/22/17.
//  Copyright © 2017 Omninos_Solutions. All rights reserved.
//

import UIKit

class RewardsViewController: UIViewController,UIScrollViewDelegate {

    @IBOutlet weak var scrollView: UIScrollView!
    
    @IBOutlet weak var scrollView2: UIScrollView!
    
    @IBOutlet weak var rewardsView: UIView!
    
       override func viewDidLoad() {
        super.viewDidLoad()
        
        scrollView2.isScrollEnabled=true;
        scrollView2.contentSize = CGSize(width: self.rewardsView.frame.size.width, height: self.rewardsView.frame.size.height)
        scrollView2.delegate = self
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        scrollView2.contentSize=CGSize(width: self.rewardsView.frame.size.width, height: 0)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
        
    @IBAction func cancel(_ sender: Any) {
        
         _ = self.navigationController?.popViewController(animated: true)
    }
}
