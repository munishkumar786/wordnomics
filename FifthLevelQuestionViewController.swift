//
//  FifthLevelQuestionViewController.swift
//  Wordnomics
//
//  Created by Omninos Android Mac on 5/19/17.
//  Copyright © 2017 Omninos_Solutions. All rights reserved.
//

import UIKit

let reuseIdentifier3 = "collectionCell3"


class FifthLevelQuestionViewController: UIViewController, UICollectionViewDelegate,UICollectionViewDataSource,UITableViewDelegate,UITableViewDataSource{
    
    var globalvalue = Bool()
    var images = NSMutableArray()
    var options=NSMutableArray();
    var correctanswerString = String()
    var num = Int()
    var CorrectAnswer = NSMutableArray()
    var Matchanswer = String()
     var cellColors = ["F28044","F0A761","FEC362","F0BB4C","E3CB92","FEA375"]
    @IBOutlet weak var QuestionTable: UITableView!
    @IBOutlet weak var slideOut: UIView!
    
    @IBOutlet weak var slideOutHide: UIButton!
    
    @IBOutlet weak var Loader: UIView!
    @IBOutlet weak var imageView1: UIImageView!
    
    @IBOutlet weak var imageView2: UIImageView!
    
    
    @IBOutlet weak var imageView3: UIImageView!
    
    @IBOutlet weak var imageView4: UIImageView!
    
    @IBOutlet weak var imageView5: UIImageView!
    var detailArray = NSArray()
    var detaila = NSMutableArray()
    var QuestionData = NSArray()
    @IBOutlet var QuestionL: UILabel!
    
    @IBOutlet var Option1: UILabel!
    
    @IBOutlet var Option2: UILabel!
    
    @IBOutlet var Option3: UILabel!
    
    
    var timer = Timer()
    var counter = Int()
    var QuestionNo = Int()
    
    @IBOutlet var Option4: UILabel!
    @IBOutlet weak var Option5: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       // slideOutHide.isHidden=true;
        globalvalue = true
        num = 0
        Loader.isHidden = false
        webservices()
       // self.QuestionTable.backgroundColor = UIColor.lightGray

       
        images = ["Rewards","LeaderBoard","Playback","SwitchStud","InviteFriends","AddNew","Teachers","Parents","Explore"]
        options=["Rewards","Leaderboard","playback","Switch Student","Invite a Friend","Add New Student","Teachers","Parents","Explore Levels "]
        counter = 0
        QuestionNo = 0
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(FifthLevelQuestionViewController.updateCounter), userInfo: nil, repeats: true)
      

    }
    
    func updateCounter()
    {
    
    
    counter += 1
        print(counter)
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
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier3,
                                                      for: indexPath as IndexPath) as! FifthLevelQuestionCollectionViewCell
        
        
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
        
    }
    
    @IBAction func back(_ sender: Any) {
        
        _ = self.navigationController?.popViewController(animated: true)
        
        
    }
    
    @IBAction func slideOut(_ sender: Any) {
        
        // slideOut.isHidden=false;
        
        slideOutHide.isHidden=false;
        UIView.animate(withDuration: 0.4, animations: {
            self.slideOut.frame.origin.x = 50;
        })
    }
    
    
    @IBAction func slideIn(_ sender: Any) {
        
        slideOutHide.isHidden=true;
        
        UIView.animate(withDuration: 0.4, animations: {
            self.slideOut.frame.origin.x = 415;
        })
    }
    
    
    @IBAction func options(_ sender: UIButton) {
        if sender.tag==1
        {
            imageView1.image = UIImage(named:"click")
            imageView2.image = UIImage(named:"")
            imageView3.image = UIImage(named:"")
            imageView4.image = UIImage(named:"")
            imageView5.image = UIImage(named:"")

            Matchanswer = self.Option1.text!
            print(Matchanswer)
        }
        
        if sender.tag==2
        {
            imageView1.image = UIImage(named:"")
            imageView2.image = UIImage(named:"click")
            imageView3.image = UIImage(named:"")
            imageView4.image = UIImage(named:"")
            imageView5.image = UIImage(named:"")

            Matchanswer = self.Option2.text!
            print(Matchanswer)
        }
        
        if sender.tag==3
        {
            imageView1.image = UIImage(named:"")
            imageView2.image = UIImage(named:"")
            imageView3.image = UIImage(named:"click")
            imageView4.image = UIImage(named:"")
            imageView5.image = UIImage(named:"")

            Matchanswer = self.Option3.text!
            print(Matchanswer)
        }
        if sender.tag==4
        {
            imageView1.image = UIImage(named:"")
            imageView2.image = UIImage(named:"")
            imageView3.image = UIImage(named:"")
            imageView4.image = UIImage(named:"click")
            imageView5.image = UIImage(named:"")

            Matchanswer = self.Option4.text!
            print(Matchanswer)
        }
        if sender.tag==5
        {
            imageView1.image = UIImage(named:"")
            imageView2.image = UIImage(named:"")
            imageView3.image = UIImage(named:"")
            imageView4.image = UIImage(named:"")
            imageView5.image = UIImage(named:"click")
            Matchanswer = self.Option5.text!
            print(Matchanswer)
        }
    }
    
    
    
    
    @IBAction func nextQuestion(_ sender: Any) {
        print(detailArray)
        var count = 0
        
        for X in CorrectAnswer  {
            if self.Matchanswer == X as! String {
        count += 1
                
            } }
            if count > 0  {
                print("correct answer")
                let next = self.storyboard?.instantiateViewController(withIdentifier: "SecondLevelVC") as! SecondLevelVC
                print(detailArray)
                timer.invalidate()
                print(counter)
                print(timer)
                next.timercount = counter
                next.details = QuestionData
                next.AnswerStr = "1"
                QuestionNo += 1
                print(QuestionNo)
                
                next.questionNo = QuestionNo
                
                self.navigationController?.pushViewController(next, animated: true)
            }else{
                print("wrong answer")
                let next = self.storyboard?.instantiateViewController(withIdentifier: "SecondLevelVC") as! SecondLevelVC
                   next.details = QuestionData
                timer.invalidate()
                print(counter)
                next.timercount = counter
                print(timer)
                next.AnswerStr = "0"
                self.navigationController?.pushViewController(next, animated: true)
            
            }
       
        
        

    }
    
    @IBAction func notificationBtn(_ sender: Any) {
        
        let next = self.storyboard?.instantiateViewController(withIdentifier: "NotificationViewController") as! NotificationViewController
        self.navigationController?.pushViewController(next, animated: true)
    }
    
    @IBAction func hideSlideOut(_ sender: Any) {
        
        slideOutHide.isHidden=true;
        
        UIView.animate(withDuration: 0.4, animations: {
            self.slideOut.frame.origin.x = 415;
        })
    }
    func webservices(){
        let dict:[String:String] = ["":""]
        print(dict)
        GlobalFunctions().alamofire_withMethod("question_answer_list", parameters: dict as NSDictionary, completion: { (result) in
            print(result)
            
            //UserDefaults.set(dict, forKey: "dict")!
            
            if (result as! NSDictionary).value(forKey: "success") as? String == "1" {
                self.detailArray = (result as! NSDictionary).value(forKey: "question_list") as! NSArray
                self.QuestionData = (result as! NSDictionary).value(forKey: "question_list") as! NSArray

                UserDefaults.standard.setValue(self.QuestionData, forKey: "questionData")
                UserDefaults.standard.synchronize()
                
//                self.QuestionL.text! = (((result as! NSDictionary).value(forKey: "questions")as! NSArray).object(at: self.num) as! NSDictionary).value(forKey: "question") as! String
//                
//                self.Option1.text! = (((((result as! NSDictionary).value(forKey: "questions")as! NSArray).object(at: self.num) as! NSDictionary).value(forKey: "answers") as! NSArray).object(at: 0) as! NSDictionary).value(forKey: "answer")as! String
//                
//                self.Option2.text! = (((((result as! NSDictionary).value(forKey: "questions")as! NSArray).object(at: self.num) as! NSDictionary).value(forKey: "answers") as! NSArray).object(at: 1) as! NSDictionary).value(forKey: "answer")as! String
//                
//                self.Option3.text! = (((((result as! NSDictionary).value(forKey: "questions")as! NSArray).object(at: self.num) as! NSDictionary).value(forKey: "answers") as! NSArray).object(at: 2) as! NSDictionary).value(forKey: "answer")as! String
//                
//                self.Option4.text! = (((((result as! NSDictionary).value(forKey: "questions")as! NSArray).object(at: self.num) as! NSDictionary).value(forKey: "answers") as! NSArray).object(at: 3) as! NSDictionary).value(forKey: "answer")as! String
//                
//                self.Option5.text! = (((((result as! NSDictionary).value(forKey: "questions")as! NSArray).object(at: self.num) as! NSDictionary).value(forKey: "answers") as! NSArray).object(at: 4) as! NSDictionary).value(forKey: "answer")as! String
//                
             //   self.detailArray = (((result as! NSDictionary).value(forKey: "question_list") as! NSArray).object(at: 0) as! NSDictionary).value(forKey: "answers") as! NSArray).object(at: 0)as! NSArray
                
                self.detailArray = (((result as! NSDictionary).value(forKey: "question_list") as! NSArray).object(at: 0)as! NSDictionary).value(forKey: "answers") as! NSArray
                print("questionsList",self.detailArray)
                UserDefaults.standard.setValue(self.detaila, forKey: "answers")
                UserDefaults.standard.synchronize()
                
                
//                let str = ((self.detailArray[self.num] as! NSDictionary).value(forKey: "answers") as! NSArray).value(forKey: "correct_answer")  as! NSArray
//                self.CorrectAnswer = str
                
             //   print(self.CorrectAnswer)
                self.Loader.isHidden = true
                self.QuestionTable.reloadData()
                
                
            }else{
                
            }
            
        })
        
    }
    //MARK:-
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return detailArray.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{

        
            let cell = QuestionTable.dequeueReusableCell(withIdentifier: "QuestionCell", for: indexPath) as! QuestionCell
   //     cell.OptionTitle .text! = (((detailArray.value(forKey: "answers") as! NSArray)).value(forKey: "answer") as! NSArray).object(at: indexPath.row) as! String
        cell.OptionTitle.text! =  (detailArray.object(at: indexPath.row)as! NSDictionary).value(forKey: "answer") as! String
        let stranswer = (detailArray.object(at: indexPath.row)as! NSDictionary).value(forKey: "correct_answer") as! String
        
        self.CorrectAnswer.add(stranswer)
        QuestionTable.estimatedRowHeight = 100
        QuestionTable.rowHeight =    UITableViewAutomaticDimension
        cell.selectionStyle = .none
        print(self.CorrectAnswer)

                if detaila.contains(indexPath){
            cell.CheckImage.image = UIImage(named: "click")
        }else{
            cell.CheckImage.image = UIImage(named: "SelectAnswer")
        }
        return cell
        
            
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        if detaila.contains(indexPath){
            detaila.remove(indexPath)
        }else{
            detaila.add(indexPath)
            self.Matchanswer = (detailArray.object(at: indexPath.row)as! NSDictionary).value(forKey: "answer") as! String
            
            print(Matchanswer)
        }
        QuestionTable.reloadData()

       
        
       }
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
   /*
        if indexPath.row == 0 {
            // cell 1
            cell.backgroundColor = UIColor.red
        }else if indexPath.row == 1 {
                // cell 2
                cell.backgroundColor = UIColor.white
        }else {
 cell.backgroundColor = UIColor.orange
        }
*/
        
      
      //  cell.backgroundColor = UIColor.red
      //  cell.contentView.backgroundColor = UIColor(cellColors[indexPath.row % cellColors.count])

        
    }

}
