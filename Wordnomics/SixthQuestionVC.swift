//
//  SixthQuestionVC.swift
//  Wordnomics
//
//  Created by Omninos iOS on 11/07/17.
//  Copyright © 2017 Omninos_Solutions. All rights reserved.
//

import UIKit

class SixthQuestionVC: UIViewController,UIScrollViewDelegate,UITableViewDelegate,UITableViewDataSource {
    
    @IBOutlet weak var QuestionTopic: UILabel!
    
    @IBOutlet weak var Question1: UILabel!
    
    @IBOutlet weak var Option1: UILabel!
    @IBOutlet weak var Option2: UILabel!
    @IBOutlet weak var Option3: UILabel!
    @IBOutlet weak var Option4: UILabel!
    @IBOutlet weak var Option5: UILabel!
    
    @IBOutlet weak var Option1Img: UIImageView!
    @IBOutlet weak var Option2Img: UIImageView!
    @IBOutlet weak var Option3Img: UIImageView!
    @IBOutlet weak var Option4Img: UIImageView!
    @IBOutlet weak var Option5Img: UIImageView!
    var AnswerStrqqqqq = String()
    
    @IBOutlet weak var QuestionTable: UITableView!
    
    @IBOutlet weak var Question2: UILabel!
    
    @IBOutlet weak var Option6: UILabel!
    @IBOutlet weak var Option7: UILabel!
    @IBOutlet weak var Option8: UILabel!
    @IBOutlet weak var Option9: UILabel!
    @IBOutlet weak var Option10: UILabel!
    
    @IBOutlet weak var Option6Img: UIImageView!
    @IBOutlet weak var Option7Img: UIImageView!
    @IBOutlet weak var Option8Img: UIImageView!
    @IBOutlet weak var Option9Img: UIImageView!
    @IBOutlet weak var Option10Img: UIImageView!
    var questionNo = Int()
    
    
    @IBOutlet weak var Question3: UILabel!
    @IBOutlet weak var Option11: UILabel!
    @IBOutlet weak var Option12: UILabel!
    @IBOutlet weak var Option13: UILabel!
    @IBOutlet weak var Option14: UILabel!
    @IBOutlet weak var Option15: UILabel!
    
    @IBOutlet weak var Option11Img: UIImageView!
    @IBOutlet weak var Option12Img: UIImageView!
    @IBOutlet weak var Option13Img: UIImageView!
    @IBOutlet weak var Option14Img: UIImageView!
    @IBOutlet weak var Option15Img: UIImageView!
    
    @IBOutlet weak var ScrollView: UIScrollView!
    
    @IBOutlet weak var NextButton: UIButton!
    
    @IBOutlet weak var imv1: UIImageView!
    @IBOutlet weak var imv2: UIImageView!
    @IBOutlet weak var imv3: UIImageView!
    @IBOutlet weak var imv4: UIImageView!
    
    var timercount = Int()
    var quesNo = Int()
    var AnswerStrqq4 = String()
    var timer = Timer()
    var detail = NSArray()
    var num = Int()
    var globalvalue = Bool()
    var Matchanswer = String()
    var questNo = Int()
    var LastAnswer2 = String()
    var LastAnswer1 = String()
     var LastAnswer3 = String()
    var CorrectAnswer = NSArray()
    var questionAns = NSMutableArray()
    var SecondQuestion = NSMutableArray()
    override func viewDidLoad() {
        super.viewDidLoad()

        print("TimeCount",timercount)
        print("QuestionNo",quesNo)
        print("Answer",AnswerStrqq4)
        print("Answer2",LastAnswer2)
        print("Answer1",LastAnswer1)
        print("3Answer",LastAnswer3)
        print("detail",detail)

      //  print("LastAnswer",LastLevelAnswer)
        
        num = 3
        SecondQuestion = UserDefaults.standard.value(forKey: "questionData") as! NSMutableArray

          questionAns = (detail[num] as! NSDictionary).value(forKey: "answers") as! NSArray as! NSMutableArray
        print(questionAns)
        QuestionTable.reloadData()
        if self.LastAnswer2 == "1"
        {
             imv2.image = UIImage(named:"Right_Answer")
            print("1st right")
            
        }else{
            print("1st wrong")
            imv2.image = UIImage(named:"Wrong_Answer")

        }
        
        if self.LastAnswer1 == "1"
        {
            imv1.image = UIImage(named:"Right_Answer")

            print("second right")
            
            
            
        }else{
            print("second wrong")
            imv1.image = UIImage(named:"Wrong_Answer")

        }
        
        if self.LastAnswer3 == "1"
        {
            imv3.image = UIImage(named:"Right_Answer")
            print("Third Right")
            
            
            
        }else{
            imv3.image = UIImage(named:"Wrong_Answer")
            print("Third Wrong")
            
        }
        print(num)
        
              
        
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(SixthQuestionVC.updateCounter), userInfo: nil, repeats: true)
        //ScrollView.isScrollEnabled = true
//        ScrollView.contentSize = CGSize(width: self.view.frame.size.width, height:self.NextButton.frame.origin.y + self.NextButton.frame.size.height + 10)
        
        // Do any additional setup after loading the view.
    }
    func updateCounter()
    {
        
        
        timercount += 1
        print(timercount)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func SelectionAction(_ sender: UIButton) {
        
        if sender.tag == 0{
            if globalvalue == true{
                globalvalue = false
                Option1Img.image = UIImage(named:"click")
                
                Matchanswer = self.Option1.text!
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
                Option2Img.image = UIImage(named:"click")
                Matchanswer = self.Option2.text!
                print(Matchanswer)
                
            }
            else{
                globalvalue = true
                Option2Img.image = UIImage(named:"")
                
            }
            
            
        }
        if sender.tag == 2 {
            if globalvalue == true{
                globalvalue = false
                Option3Img.image = UIImage(named:"click")
                Matchanswer = self.Option3.text!
                print(Matchanswer)
                
            }
            else{
                globalvalue = true
                Option3Img.image = UIImage(named:"")
            }
        }
        if sender.tag == 3{
            if globalvalue == true {
                globalvalue = false
                Option4Img.image = UIImage(named:"click")
                Matchanswer = self.Option4.text!
                print(Matchanswer)
                
            }
            else {
                globalvalue = true
                Option4Img.image = UIImage(named:"")
                
            }
        }
        if sender.tag == 4 {
            if globalvalue == true{
                globalvalue = false
                
                Option5Img.image = UIImage(named:"click")
                
                
                Matchanswer = self.Option5.text!
                print(Matchanswer)
                
            }
            else{
                globalvalue = true
                Option5Img.image = UIImage(named:"")
                
            }
            
            
        }
        if sender.tag == 5{
            if globalvalue == true{
                globalvalue = false
                
                Option6Img.image = UIImage(named:"click")
                Matchanswer = self.Option6.text!
                print(Matchanswer)
                
            }
            else{
                globalvalue = true
                Option6Img.image = UIImage(named:"")
            }
            // imagebox()
            
        }
        if sender.tag == 6{
            if globalvalue == true{
                globalvalue = false
                Option7Img.image = UIImage(named:"click")
                Matchanswer = self.Option7.text!
                
                print(Matchanswer)
                
            }
            else{
                globalvalue = true
                
                Option7Img.image = UIImage(named:"")
            }
        }
        if sender.tag == 7{
            if globalvalue == true{
                globalvalue = false
                
                Option8Img.image = UIImage(named:"click")
                Matchanswer = self.Option8.text!
                print(Matchanswer)
                
            }
            else{
                globalvalue = true
                
                Option8Img.image = UIImage(named:"")
            }
        }
        if sender.tag == 8{
            if globalvalue == true{
                globalvalue = false
                Option9Img.image = UIImage(named:"click")
                Matchanswer = self.Option9.text!
                print(Matchanswer)
                
                
            }
            else{
                globalvalue = true
                
                Option9Img.image = UIImage(named:"")
            }}
        if sender.tag == 9{
            if globalvalue == true{
                globalvalue = false
                Option10Img.image = UIImage(named:"click")
                Matchanswer = self.Option10.text!
                print(Matchanswer)
                
                
            }
            else{
                globalvalue = true
                
                Option10Img.image = UIImage(named:"")
            }}
        if sender.tag == 10{
            if globalvalue == true{
                globalvalue = false
                Option11Img.image = UIImage(named:"click")
                Matchanswer = self.Option11.text!
                print(Matchanswer)
                
                
            }
            else{
                globalvalue = true
                
                Option11Img.image = UIImage(named:"")
            }}
        if sender.tag == 11{
            if globalvalue == true{
                globalvalue = false
                Option12Img.image = UIImage(named:"click")
                Matchanswer = self.Option12.text!
                print(Matchanswer)
                
                
            }
            else{
                globalvalue = true
                
                Option12Img.image = UIImage(named:"")
            }}
        if sender.tag == 12{
            if globalvalue == true{
                globalvalue = false
                Option13Img.image = UIImage(named:"click")
                Matchanswer = self.Option13.text!
                print(Matchanswer)
                
                
            }
            else{
                globalvalue = true
                
                Option13Img.image = UIImage(named:"")
            }}
        if sender.tag == 13{
            if globalvalue == true{
                globalvalue = false
                Option14Img.image = UIImage(named:"click")
                Matchanswer = self.Option14.text!
                print(Matchanswer)
                
                
            }
            else{
                globalvalue = true
                
                Option14Img.image = UIImage(named:"")
            }}
        if sender.tag == 14{
            if globalvalue == true{
                globalvalue = false
                Option15Img.image = UIImage(named:"click")
                Matchanswer = self.Option15.text!
                print(Matchanswer)
                
                
            }
            else{
                globalvalue = true
                
                Option15Img.image = UIImage(named:"")
            }}
        
    }
    
    @IBAction func NextButton(_ sender: Any) {
        
        var count = 0
        
        
        for X in CorrectAnswer  {
            if self.Matchanswer == X as! String {
                count += 1
                print(Matchanswer)
                print(CorrectAnswer)
            } }
        if count > 0  {
            print("correct answer")
            let next = self.storyboard?.instantiateViewController(withIdentifier: "SeventhVC") as! SeventhVC
           // next.AnswerStrqq = "1"
            
          ///  next.LastAnswer = AnswerStrqq4
            
                    next.NExtTimer = timercount
            print(quesNo)
            quesNo += 1
            next.quesNos = quesNo
            next.details = detail

            timer.invalidate()
            
            
            
            
            
            self.navigationController?.pushViewController(next, animated: true)
            //            let next = self.storyboard?.instantiateViewController(withIdentifier: "SecondLevelVC") as! SecondLevelVC
            //            print(detailArray)
            //            next.details = detailArray
            //            next.AnswerStr = "1"
            //
            //            self.navigationController?.pushViewController(next, animated: true)
        }else{
            let next = self.storyboard?.instantiateViewController(withIdentifier: "SeventhVC") as! SeventhVC
           // next.AnswerStrqq = "0"
           // next.LastAnswer = AnswerStrqq4
            next.NExtTimer = timercount
            timer.invalidate()
            next.quesNos = quesNo
          

            next.details = detail
    
            self.navigationController?.pushViewController(next, animated: true)
            //            let next = self.storyboard?.instantiateViewController(withIdentifier: "SecondLevelVC") as! SecondLevelVC
            //            next.details = detailArray
            //            next.AnswerStr = "0"
            //
            //            self.navigationController?.pushViewController(next, animated: true)
            
        }
        
    }
    //MARK:-
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return questionAns.count
        print(questionAns.count)
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        
        
        let cell = QuestionTable.dequeueReusableCell(withIdentifier: "SixthVCCell", for: indexPath) as! SixthVCCell
        let str2 = (((SecondQuestion[num] as! NSDictionary).value(forKey: "answers") as! NSArray).object(at: indexPath.row) as! NSDictionary).value(forKey: "answer")  as! String
        
        let strArray2 = str2.components(separatedBy: " \r\n")
        print(strArray2)
        
    // let stranswer = (questionAns.object(at: indexPath.row)as! NSDictionary).value(forKey: "correct_answer") as! String
        //self.CorrectAnswer.add(stranswer)

     //   print(self.CorrectAnswer)
        
        cell.dataArr = strArray2
        
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
