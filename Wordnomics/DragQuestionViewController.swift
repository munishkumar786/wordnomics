//
//  DragQuestionViewController.swift
//  Wordnomics
//
//  Created by Omninos Android Mac on 5/19/17.
//  Copyright © 2017 Omninos_Solutions. All rights reserved.
//

import UIKit


let reuseIdentifier4 = "collectionCell4"

class DragQuestionViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {
    
    
    @IBOutlet weak var slideoutView: UIView!
    var images = NSMutableArray()
    var options=NSMutableArray();

    @IBOutlet weak var blackBtn: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

         blackBtn.isHidden=true;
        images = ["Rewards","LeaderBoard","Playback","SwitchStud","InviteFriends","AddNew","Teachers","Parents","Explore"]
        options=["Rewards","Leaderboard","playback","Switch Student","Invite a Friend","Add New Student","Teachers","Parents","Explore Levels "]
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
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier4,
                                                      for: indexPath as IndexPath) as! DragQuestionCollectionViewCell
        
        // Configure the cell
        let image = UIImage(named: images[indexPath.row] as! String)
        cell.imageView.image = image
        
        cell.category.text = options[indexPath.row] as? String
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath)
    {
        if(indexPath.item==0)
        {
            let leader = self.storyboard?.instantiateViewController(withIdentifier: "RewardsViewController") as! RewardsViewController
            self.navigationController?.pushViewController(leader, animated: true)

        }
        
        if(indexPath.item==1)
        {
            let leader = self.storyboard?.instantiateViewController(withIdentifier: "LeaderBoardViewController") as! LeaderBoardViewController
            self.navigationController?.pushViewController(leader, animated: true)
        }
        
        if(indexPath.item==2)
        {
            
        }
        
        if(indexPath.item==3)
        {
            let switchstud = self.storyboard?.instantiateViewController(withIdentifier: "SwitchAccountViewController") as! SwitchAccountViewController
            self.navigationController?.pushViewController(switchstud, animated: true)
        }
        
        
        if(indexPath.item==4)
        {
            let activityVc = UIActivityViewController(activityItems: ["https://developer.apple.com/"], applicationActivities: nil)
            activityVc.popoverPresentationController?.sourceView=self.view;
            
            self.present(activityVc,animated: true,completion: nil)
        }
        
        
        if(indexPath.item==5)
        {
            let switchstud = self.storyboard?.instantiateViewController(withIdentifier: "AddNewStudViewController") as!AddNewStudViewController
            self.navigationController?.pushViewController(switchstud, animated: true)
        }
        
        
        if(indexPath.item==6)
        {
            let switchstud = self.storyboard?.instantiateViewController(withIdentifier: "TeachersViewController") as!TeachersViewController
            self.navigationController?.pushViewController(switchstud, animated: true)
        }
        
        
        if(indexPath.item==7)
        {
            let switchstud = self.storyboard?.instantiateViewController(withIdentifier: "ParentsViewController") as!ParentsViewController
            self.navigationController?.pushViewController(switchstud, animated: true)
        }
        
        
        if(indexPath.item==8)
        {
            let switchstud = self.storyboard?.instantiateViewController(withIdentifier: "LevelsViewController") as! LevelsViewController
            self.navigationController?.pushViewController(switchstud, animated: true)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    

    @IBAction func slideOut(_ sender: Any) {
        
         blackBtn.isHidden=false;
        UIView.animate(withDuration: 0.4, animations: {
            self.slideoutView.frame.origin.x = 50;
        })
        
    }
    @IBAction func slideIn(_ sender: Any) {
        
         blackBtn.isHidden=true;

        UIView.animate(withDuration: 0.4, animations: {
            self.slideoutView.frame.origin.x = 415;
        })
        

    }
        
    @IBAction func next(_ sender: Any) {
        
        
        let next = self.storyboard?.instantiateViewController(withIdentifier: "LastLevelViewController") as! LastLevelViewController
        self.navigationController?.pushViewController(next, animated: true)
    }
    
   @IBAction func back(_ sender: Any) {
        
        _ = self.navigationController?.popViewController(animated: true)
    }
        
    @IBAction func notificationBtn(_ sender: Any) {
        
        let next = self.storyboard?.instantiateViewController(withIdentifier: "NotificationViewController") as! NotificationViewController
        self.navigationController?.pushViewController(next, animated: true)
    }
    @IBAction func blackBtn(_ sender: Any) {
        
        
        blackBtn.isHidden=true;
        
        UIView.animate(withDuration: 0.4, animations: {
            self.slideoutView.frame.origin.x = 415;
        })

        
    }
}
