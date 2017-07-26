//
//  SlideoutViewController.swift
//  Wordnomics
//
//  Created by Omninos Android Mac on 5/18/17.
//  Copyright © 2017 Omninos_Solutions. All rights reserved.
//

import UIKit


let reuseIdentifier = "collectionCell"

class SlideoutViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {
    
    var images = NSMutableArray()
    var options=NSMutableArray();
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    
    @IBOutlet weak var slideoutBtn: UIButton!
    
    @IBOutlet weak var slideOutView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        images = ["Rewards","LeaderBoard","Playback","SwitchStud","InviteFriends","AddNew","Teachers","Parents","Explore"]
        options=["Rewards","Leaderboard","playback","Switch Student","Invite a Friend","Add New Student","Teachers","Parents","Explore Levels "]
        
      
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    func numberOfSectionsInCollectionView(collectionView:
        UICollectionView!) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        numberOfItemsInSection section: Int) -> Int {
        return images.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier,
                                                      for: indexPath as IndexPath) as!SlideoutCollectionViewCell
        
        // Configure the cell
        let image = UIImage(named: images[indexPath.row] as! String)
        cell.imageView.image = image
        
        cell.category.text = options[indexPath.row] as? String
        return cell
    }
    
    
    @IBAction func slideOut(_ sender: Any) {
        
        slideoutBtn.isHidden=true;
        UIView.animate(withDuration: 0.4, animations: {
            self.slideOutView.frame.origin.x = 0;
        })
        
    }
    @IBAction func slideIn(_ sender: Any) {
        slideoutBtn.isHidden=false;
        UIView.animate(withDuration: 0.4, animations: {
            self.slideOutView.frame.origin.x = -330;
        })
        
    }
}
