//
//  LastLevelViewController.swift
//  Wordnomics
//
//  Created by Omninos Android Mac on 5/19/17.
//  Copyright © 2017 Omninos_Solutions. All rights reserved.
//

import UIKit


let reuseIdentifier6 = "collectionCell5"
class LastLevelViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UITableViewDataSource,UITableViewDelegate {

     var globalvalue = Bool()
    @IBOutlet weak var slideOut: UIButton!
    @IBOutlet weak var slideoutView: UIView!
    var images = NSMutableArray()
    var options=NSMutableArray();
    var LastAnswer = String()
    @IBOutlet weak var blackBtn: UIButton!
    
    @IBOutlet weak var imageView1: UIImageView!
    
    @IBOutlet weak var imageView2: UIImageView!
    
    @IBOutlet weak var imageView3: UIImageView!
    
    @IBOutlet weak var imageView4: UIImageView!
    
    @IBOutlet weak var nextOutlet: UIButton!
    @IBOutlet weak var ScrollView: UIScrollView!
    var AnswerStrqq = String()
    var AnswerStrqqqq = String()

    @IBOutlet weak var CheckLabel: UILabel!
var questNo = Int()
        var detailArray = NSArray()
    var Matchanswer = String()

    @IBOutlet weak var Option1: UILabel!
    @IBOutlet weak var Option1a: UILabel!
    @IBOutlet weak var Option1b: UILabel!
    @IBOutlet weak var Option1c: UILabel!

    @IBOutlet weak var Option1Img: UIImageView!
    
    @IBOutlet weak var Option1aImv: UIImageView!
    @IBOutlet weak var Option1bImv: UIImageView!
    @IBOutlet weak var Option1cImv: UIImageView!

    @IBOutlet weak var Option2: UILabel!
    @IBOutlet weak var Option2a: UILabel!
    @IBOutlet weak var Option2b: UILabel!
    @IBOutlet weak var Option2c: UILabel!

    @IBOutlet weak var Option2Imv: UIImageView!
    @IBOutlet weak var Option2aImv: UIImageView!
    
    @IBOutlet weak var Option2bImv: UIImageView!
    
    @IBOutlet weak var Option2cImv: UIImageView!
    @IBOutlet weak var Option3: UILabel!
    @IBOutlet weak var Option3a: UILabel!
    @IBOutlet weak var Option3b: UILabel!
    @IBOutlet weak var Option3c: UILabel!

    @IBOutlet weak var Option3Imv: UIImageView!
    @IBOutlet weak var Option3aImv: UIImageView!
    
    @IBOutlet weak var Option3bImv: UIImageView!
    @IBOutlet weak var Option3cImv: UIImageView!
    
    @IBOutlet weak var QuestionTitle: UILabel!
    
    @IBOutlet weak var AnswerImage: UIImageView!
    
    @IBOutlet weak var LastAnswerImage: UIImageView!
    @IBOutlet weak var NextView: UIView!
    var questionAns = NSMutableArray()
    var tapGestureRecognizer:UITapGestureRecognizer!
var ThirdAquestion = NSMutableArray()
    var ThirdQuestionArray = NSMutableArray()
    @IBOutlet weak var QuestionTable: UITableView!
    
    var num = Int()
    var NExtTimer = Int()
var timer = Timer()
var CorrectAnswers = NSArray()
    override func viewDidLoad() {
        super.viewDidLoad()
        print(detailArray)
        print(NExtTimer)
        print(questNo)
        
        num = 2
        questionAns = (detailArray[num] as! NSDictionary).value(forKey: "answers") as! NSArray as! NSMutableArray
        
print(questionAns)

        let str = (((detailArray[num] as! NSDictionary).value(forKey: "answers") as! NSArray).object(at: 0) as! NSDictionary).value(forKey: "answer")  as! String
        
        let strArray = str.components(separatedBy: "\r\n")
        print(strArray)
        self.ThirdQuestionArray = strArray as! NSMutableArray
        print(ThirdQuestionArray)

        
        print(AnswerStrqq)
        print(LastAnswer)
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(LastLevelViewController.updateCounter), userInfo: nil, repeats: true)

        
        if self.LastAnswer == "1"
        {
            LastAnswerImage.image = UIImage(named:"Right_Answer")
            
            
            
        }else{
            LastAnswerImage.image = UIImage(named:"Wrong_Answer")
            
        }
        

        if self.AnswerStrqq == "1"
        {
            AnswerImage.image = UIImage(named:"Right_Answer")
            
            
            
        }else{
            AnswerImage.image = UIImage(named:"Wrong_Answer")
            
        }
        
        ScrollView.isScrollEnabled = true
        ScrollView.contentSize = CGSize(width: self.view.frame.size.width, height:self.NextView.frame.origin.y + self.NextView.frame.size.height + 10)
        
       // QuestionTitle.text! = (detailArray[num] as! NSDictionary).value(forKey: "question")  as! String
        let stranswer = ((detailArray[num] as! NSDictionary).value(forKey: "answers") as! NSArray).value(forKey: "correct_answer")  as! NSArray
        
        self.CorrectAnswers = stranswer
        
//        let str = (((detailArray[num] as! NSDictionary).value(forKey: "answers") as! NSArray).object(at: 0) as! NSDictionary).value(forKey: "answer")  as! String
//        
//        let strArray = str.components(separatedBy: "\r\n")
//        print(strArray[0])
//        Option1.text! = strArray[0]
//        Option1a.text! = strArray[1]
//        Option1b.text! = strArray[2]
//        Option1c.text! = strArray[3]
//
//        let str1 = (((detailArray[num] as! NSDictionary).value(forKey: "answers") as! NSArray).object(at: 1) as! NSDictionary).value(forKey: "answer")  as! String
//        
//        let strArray1 = str1.components(separatedBy: "\r\n")
//        Option2.text! = strArray1[0]
//        Option2a.text! = strArray1[1]
//        Option2b.text! = strArray1[2]
//        Option2c.text! = strArray1[3]
//
//        
//        let str2 = (((detailArray[num] as! NSDictionary).value(forKey: "answers") as! NSArray).object(at: 2) as! NSDictionary).value(forKey: "answer")  as! String
//        
//        let strArray2 = str2.components(separatedBy: "\n")
//        print(strArray2)
//        Option3.text! = strArray2[0]
//        Option3a.text! = strArray2[1]
//        Option3b.text! = strArray2[2]
//        Option3c.text! = strArray2[3]
//

        globalvalue = true

        images = ["Rewards","LeaderBoard","Playback","SwitchStud","InviteFriends","AddNew","Teachers","Parents","Explore"]
        options=["Rewards","Leaderboard","playback","Switch Student","Invite a Friend","Add New Student","Teachers","Parents","Explore Levels "]
    }
    func updateCounter()
    {
        
        
        NExtTimer += 1
        print(NExtTimer)
    }
    func onUserClickingSendToken(_ sender: Any)
    {
       print("hi")
    CheckLabel.textColor = .red
    
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    

       @IBAction func back(_ sender: Any) {
        
        _ = self.navigationController?.popViewController(animated: true)
        
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
            
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier6,
                                                          for: indexPath as IndexPath) as! LastLevelCollectionViewCell
            
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
      
    

    @IBAction func slideIn(_ sender: Any)
    {
        blackBtn.isHidden=false;
        slideOut.isHidden=false;
        UIView.animate(withDuration: 0.4, animations: {
            self.slideoutView.frame.origin.x = 50;
        })
        
        
    }
    @IBAction func slideOut(_ sender: Any)
    {
        
         blackBtn.isHidden=true;
        slideOut.isHidden=false;
UIView.animate(withDuration: 0.4, animations: {
            self.slideoutView.frame.origin.x = 415;
        })
        
    }
    
    @IBAction func next(_ sender: Any) {
 
        var count = 0
        
        for X in CorrectAnswers  {
            if self.Matchanswer == X as! String {
                count += 1
                print(Matchanswer)
                print(CorrectAnswers)
            } }
        if count > 0  {
            print("correct answer")
            
            let score = self.storyboard?.instantiateViewController(withIdentifier: "SixthQuestionVC") as! SixthQuestionVC
            score.timercount = NExtTimer
            score.quesNo = questNo
            //    score.questNo =+1
            timer.invalidate()

            print(AnswerStrqq)
            print(LastAnswer)
            
            
            score.AnswerStrqqqqq = "1"
            timer.invalidate()
           
            questNo += 1
            print(questNo)
            score.quesNo = questNo
            score.detail = detailArray

            self.navigationController?.pushViewController(score, animated: true)

           
        }else{
            
            
            let score = self.storyboard?.instantiateViewController(withIdentifier: "SixthQuestionVC") as! SixthQuestionVC
            score.timercount = NExtTimer
            //    score.questNo =+1
            timer.invalidate()
            score.AnswerStrqqqqq = "0"
           
            timer.invalidate()
            score.detail = detailArray
            score.quesNo = questNo

            self.navigationController?.pushViewController(score, animated: true)
            
            
            
            //            let next = self.storyboard?.instantiateViewController(withIdentifier: "SecondLevelVC") as! SecondLevelVC
            //            next.details = detailArray
            //            next.AnswerStr = "0"
            //            
            //            self.navigationController?.pushViewController(next, animated: true)
            
        }
        
    }

        
        
        
    
    
    @IBAction func notification(_ sender: Any) {
        
        let score = self.storyboard?.instantiateViewController(withIdentifier: "NotificationViewController") as! NotificationViewController
        self.navigationController?.pushViewController(score, animated: true)
    }
    @IBAction func blackBtn(_ sender: Any) {
        
        blackBtn.isHidden=true;
       
        UIView.animate(withDuration: 0.4, animations: {
            self.slideoutView.frame.origin.x = 415;
        })
        
    }
    
    @IBAction func options(_ sender: UIButton) {
        
        if sender.tag==1
        {
            imageView1.image = UIImage(named:"click")
            imageView2.image = UIImage(named:"")
            imageView3.image = UIImage(named:"")
            imageView4.image = UIImage(named:"")
        }
        
        if sender.tag==2
        {
            imageView1.image = UIImage(named:"")
            imageView2.image = UIImage(named:"click")
            imageView3.image = UIImage(named:"")
            imageView4.image = UIImage(named:"")
        }
        
        if sender.tag==3
        {
            imageView1.image = UIImage(named:"")
            imageView2.image = UIImage(named:"")
            imageView3.image = UIImage(named:"click")
            imageView4.image = UIImage(named:"")
        }
        
        
        if sender.tag==4
        {
            imageView1.image = UIImage(named:"")
            imageView2.image = UIImage(named:"")
            imageView3.image = UIImage(named:"")
            imageView4.image = UIImage(named:"click")
        }

    }
    
    
    @IBAction func OptionAction(_ sender:UIButton) {
        
        
            
            if sender.tag == 0{
                if globalvalue == true{
                    globalvalue = false
                    Option1Img.image = UIImage(named:"click")
                    
                    Matchanswer = self.Option1
                        .text!
                    print(Matchanswer)
                }
                else {
                    globalvalue = true
                    Option1Img.image = UIImage(named:"")
                    
                }
                
            }
            if sender.tag == 1{
                if globalvalue == true{
                    globalvalue = false
                    Option1aImv.image = UIImage(named:"click")
                    Matchanswer = self.Option1a.text!
                    print(Matchanswer)
                    
                }
                else{
                    globalvalue = true
                    Option1aImv.image = UIImage(named:"")
                    
                }
                
                
            }
            if sender.tag == 2 {
                if globalvalue == true{
                    globalvalue = false
                    Option1bImv.image = UIImage(named:"click")
                    Matchanswer = self.Option1b.text!
                    print(Matchanswer)
                    
                }
                else{
                    globalvalue = true
                    Option1bImv.image = UIImage(named:"")
                }
                
                
            }
            if sender.tag == 3{
                if globalvalue == true {
                    globalvalue = false
                    Option1cImv.image = UIImage(named:"click")
                    Matchanswer = self.Option1c.text!
                    print(Matchanswer)
                    
                }
                else {
                    globalvalue = true
                    Option1cImv.image = UIImage(named:"")
                    
                }
            }
            if sender.tag == 4 {
                if globalvalue == true{
                    globalvalue = false
                    
                    Option2Imv.image = UIImage(named:"click")
                    
                    
                    Matchanswer = self.Option2.text!
                    print(Matchanswer)
                    
                }
                else{
                    globalvalue = true
                    Option2Imv.image = UIImage(named:"")
                    
                }
                
                
            }
            if sender.tag == 5{
                if globalvalue == true{
                    globalvalue = false
                    
                    Option2aImv.image = UIImage(named:"click")
                    Matchanswer = self.Option2a.text!
                    print(Matchanswer)
                    
                }
                else{
                    globalvalue = true
                    Option2aImv.image = UIImage(named:"")
                }
                // imagebox()
                
            }
            if sender.tag == 6{
                if globalvalue == true{
                    globalvalue = false
                    Option2bImv.image = UIImage(named:"click")
                    Matchanswer = self.Option2b.text!
                    
                    print(Matchanswer)
                    
                }
                else{
                    globalvalue = true
                    
                    Option2bImv.image = UIImage(named:"")
                }
            }
            if sender.tag == 7{
                if globalvalue == true{
                    globalvalue = false
                    
                    Option2cImv.image = UIImage(named:"click")
                    Matchanswer = self.Option2c.text!
                    print(Matchanswer)
                    
                }
                else{
                    globalvalue = true
                    
                    Option2cImv.image = UIImage(named:"")
                }
            }
            if sender.tag == 8{
                if globalvalue == true{
                    globalvalue = false
                    Option3Imv.image = UIImage(named:"click")
                    Matchanswer = self.Option3.text!
                    print(Matchanswer)
                    
                    
                }
                else{
                    globalvalue = true
                    
                    Option3Imv.image = UIImage(named:"")
                }}
        if sender.tag == 9{
                    if globalvalue == true{
                        globalvalue = false
                        Option3aImv.image = UIImage(named:"click")
                        Matchanswer = self.Option3a.text!
                        print(Matchanswer)
                        
                        
                    }
                    else{
                        globalvalue = true
                        
                        Option3aImv.image = UIImage(named:"")
                    }}
        if sender.tag == 10{
            if globalvalue == true{
                globalvalue = false
                Option3bImv.image = UIImage(named:"click")
                Matchanswer = self.Option3b.text!
                print(Matchanswer)
                
                
            }
            else{
                globalvalue = true
                
                Option3bImv.image = UIImage(named:"")
            }}
        if sender.tag == 11{
            if globalvalue == true{
                globalvalue = false
                Option3cImv.image = UIImage(named:"click")
                Matchanswer = self.Option3c.text!
                print(Matchanswer)
                
                
            }  else{
                globalvalue = true
                
                Option3cImv.image = UIImage(named:"")
            }
            
        }
}

    //MARK:-
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return detailArray.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        
        
        let cell = QuestionTable.dequeueReusableCell(withIdentifier: "LastLevelCell", for: indexPath) as! LastLevelCell
        

        let str2 = (((detailArray[num] as! NSDictionary).value(forKey: "answers") as! NSArray).object(at: indexPath.row) as! NSDictionary).value(forKey: "answer")  as! String
        
        let strArray2 = str2.components(separatedBy: "\r\n")
        print(strArray2)
        
        cell.dataArr = strArray2
        
        
        // cell.OptionLabel.text! = (((detailArray[num] as! NSDictionary).value(forKey: "answers") as! NSArray).object(at: 0) as! NSDictionary).value(forKey: "answer")  as! String
        
               if detailArray.contains(indexPath){
            cell.CheckImage.image = UIImage(named: "click")
        }else{
            cell.CheckImage.image = UIImage(named: "SelectAnswer")
        }
        return cell
        
        
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        //        if detaila.contains(indexPath){
        //            detaila.remove(indexPath)
        //        }else{
        //            detaila.add(indexPath)
        //        }
        //        QuestionTable.reloadData()
        //        
    }

    
}


