//
//  ScoreViewController.swift
//  Wordnomics
//
//  Created by Omninos Android Mac on 5/19/17.
//  Copyright © 2017 Omninos_Solutions. All rights reserved.
//

import UIKit


let reuseIdentifier7 = "collectionCell6"

class ScoreViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {
    
    var images = NSMutableArray()
    var options=NSMutableArray();

    @IBOutlet weak var score: UILabel!
    
    @IBOutlet weak var blackBtn: UIButton!
    var NExtTimers = Int()

    @IBOutlet weak var slideOut: UIButton!
    @IBOutlet weak var points: UILabel!
    
    @IBOutlet weak var progress: UIImageView!
    
    @IBOutlet weak var slideoutVIew: UIView!
    var LastAnswer = String()

    @IBOutlet weak var timeTaken: UILabel!
    var format = String()
    var timercount = Int()
    var quesNous = Int()
    var AnswerStrqq = String()
    var LastAnswer1 = String()
    var LastAnswer2 =  String()
 var LastAnswer3 =  String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(timercount)
        print(LastAnswer1)
        print(LastAnswer2)
        print(LastAnswer3)
print(quesNous)
       print(AnswerStrqq)
        
        let minutes = Int(timercount) / 60 % 60
        let seconds = Int(timercount) % 60
        format = String(format:"%02i:%02i", minutes, seconds)
        timeTaken.text = String(format)
        
score.text = "\(quesNous)"
        
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
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier7,
                                                      for: indexPath as IndexPath) as!ScoreCollectionViewCell
        
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
            
            /*let optionMenu = UIAlertController(title: nil, message: "Choose Option", preferredStyle: .actionSheet)
            
           
            let fb = UIAlertAction(title: "Facebook", style: .default, handler: {
                (alert: UIAlertAction!) -> Void in
                print("File Deleted")
            })
            let twitter = UIAlertAction(title: "Save", style: .default, handler: {
                (alert: UIAlertAction!) -> Void in
                print("File Saved")
            })
            
            
            let GooglePlus = UIAlertAction(title: "Save", style: .default, handler: {
                (alert: UIAlertAction!) -> Void in
                print("File Saved")
                })
                
            let instagram = UIAlertAction(title: "Save", style: .default, handler: {
                    (alert: UIAlertAction!) -> Void in
                    print("File Saved")
                })
            
            let Whatsapp = UIAlertAction(title: "Save", style: .default, handler: {
                (alert: UIAlertAction!) -> Void in
                print("File Saved")
            })

            
            let message = UIAlertAction(title: "Cancel", style: .cancel, handler: {
                (alert: UIAlertAction!) -> Void in
                print("Cancelled")
            })
            
            
            
            // 4
            optionMenu.addAction(fb)
            optionMenu.addAction(twitter)
            optionMenu.addAction(GooglePlus)
            optionMenu.addAction(Whatsapp)
            optionMenu.addAction(instagram)
            optionMenu.addAction(message)
            
            // 5
            self.present(optionMenu, animated: true, completion: nil)*/
            
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
    
    @IBAction func back(_ sender: Any) {
        
        _ = self.navigationController?.popViewController(animated: true)

        
        
    }

    @IBAction func slideOut(_ sender: Any) {
        
         blackBtn.isHidden=false;
       // slideOut.isHidden=true;
        UIView.animate(withDuration: 0.4, animations: {
            self.slideoutVIew.frame.origin.x = 50;
        })

        
        }
    
    
    
    @IBAction func slideIn(_ sender: Any) {
        
         blackBtn.isHidden=true;
        slideOut.isHidden=false;
        UIView.animate(withDuration: 0.4, animations: {
            self.slideoutVIew.frame.origin.x = 415
            ;
        })
    }
    
    @IBAction func nextLevel(_ sender: Any) {
    }
    
    
    @IBAction func home(_ sender: Any) {
        
        let home = self.storyboard?.instantiateViewController(withIdentifier: "MenuViewController") as! MenuViewController
        self.navigationController?.pushViewController(home, animated: true)
        
}
    
    @IBAction func notificationBtn(_ sender: Any) {
        
        let home = self.storyboard?.instantiateViewController(withIdentifier: "NotificationViewController") as! NotificationViewController
        self.navigationController?.pushViewController(home, animated: true)
    }
    @IBAction func blackBtn(_ sender: Any) {
        
        blackBtn.isHidden=true;
        
        UIView.animate(withDuration: 0.4, animations: {
            self.slideoutVIew.frame.origin.x = 415;
        })

    }
    
    }
