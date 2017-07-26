//
//  SecondLevelVC.swift
//  Wordnomics
//
//  Created by Omninos iOS on 05/07/17.
//  Copyright © 2017 Omninos_Solutions. All rights reserved.
//

import UIKit

class SecondLevelVC: UIViewController,UITableViewDelegate,UITableViewDataSource {
    var details = NSArray()
    var num = Int()
    var Matchanswer = String()
    var CorrectAnswer = NSMutableArray()
    var AnswerStr = String()
    @IBOutlet weak var questionName: UILabel!
    @IBOutlet weak var option1: UILabel!
    @IBOutlet weak var option1a: UILabel!
    @IBOutlet weak var option1b: UILabel!
    @IBOutlet weak var option1img: UIImageView!
    @IBOutlet weak var option1aImg: UIImageView!
    @IBOutlet weak var option1bImg: UIImageView!
    @IBOutlet weak var option2: UILabel!
    @IBOutlet weak var option2a: UILabel!
    @IBOutlet weak var option2b: UILabel!
    @IBOutlet weak var option2Img: UIImageView!
    @IBOutlet weak var option2aImg: UIImageView!
    @IBOutlet weak var option2bImg: UIImageView!
    @IBOutlet weak var option3: UILabel!
    @IBOutlet weak var option3a: UILabel!
    @IBOutlet weak var option3b: UILabel!
    @IBOutlet weak var option3Img: UIImageView!
    
    @IBOutlet weak var option3bImg: UIImageView!
    @IBOutlet weak var option3aImg: UIImageView!
    
    @IBOutlet weak var RsultAnswerImage: UIImageView!
    var ColorArray = NSArray()
    
    @IBOutlet weak var QuestionTable: UITableView!
    var CheckAnswer = NSMutableArray()
    var timercount = Int()
    var globalvalue = Bool()
    var timer = Timer()
    var questionNo = Int()
    var SecondQuestion = NSMutableArray()
    var questionAns = NSMutableArray()
    override func viewDidLoad() {
        super.viewDidLoad()
        print("totaltime",timercount)
        print("quesno",questionNo)
        print("answer",AnswerStr)


        num = 1
ColorArray = ["Red", "Green"]

      SecondQuestion = UserDefaults.standard.value(forKey: "questionData") as! NSMutableArray
        print(SecondQuestion)
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(SecondLevelVC.updateCounter), userInfo: nil, repeats: true)
        
       questionAns = (SecondQuestion[num] as! NSDictionary).value(forKey: "answers") as! NSArray as! NSMutableArray
        
        print(questionAns)
        QuestionTable.reloadData()
//        let str = (((SecondQuestion[num] as! NSDictionary).value(forKey: "answers") as! NSArray).object(at: 1) as! NSDictionary).value(forKey: "answer")  as! String
//        
//        let strArray = str.components(separatedBy: "\r\n")
//        print(strArray)
//         self.questionAr1 = strArray as! NSMutableArray
//        print(questionAr1)
//        
//        let str1 = (((SecondQuestion[num] as! NSDictionary).value(forKey: "answers") as! NSArray).object(at: 1) as! NSDictionary).value(forKey: "answer")  as! String
//        
//        let strArray1 = str1.components(separatedBy: "\r\n")
//        print(strArray)
//        self.questionArt2 = strArray1 as! NSMutableArray
//        print(questionArt2)

        
        if self.AnswerStr == "1"
        {
            RsultAnswerImage.image = UIImage(named:"Right_Answer")
            
        }else{
            RsultAnswerImage.image = UIImage(named:"Wrong_Answer")
            
        }
        
        print(details)
        
        
//      questionName.text! = (details[num] as! NSDictionary).value(forKey: "question") as! String
//        print("questionName",self.questionName)

        
     //   questionName.text! = (details[num] as! NSDictionary).value(forKey: "question")  as! String
       
        
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
    @IBAction func SideMenu(_ sender: Any) {
        let Register = self.storyboard?.instantiateViewController(withIdentifier: "MenuViewController") as! MenuViewController
        self.navigationController?.pushViewController(Register, animated: true)
    }
    func imagebox(){
        option1img.image = UIImage(named:"SelectAnswer")
        option1aImg.image = UIImage(named:"SelectAnswer")
        option1bImg.image = UIImage(named:"SelectAnswer")
        option2Img.image = UIImage(named:"SelectAnswer")
        option2aImg.image = UIImage(named:"SelectAnswer")
        option2bImg.image = UIImage(named:"SelectAnswer")
        option3Img.image = UIImage(named:"SelectAnswer")
        option3aImg.image = UIImage(named:"SelectAnswer")
        option3bImg.image = UIImage(named:"SelectAnswer")
        
    }
    
    @IBAction func QuestionAction(_ sender: UIButton) {
        
        if sender.tag == 0{
            if globalvalue == true{
                globalvalue = false
                option1img.image = UIImage(named:"click")
                Matchanswer = self.option1.text!
                CheckAnswer.add(Matchanswer)

print(CheckAnswer)
                print(Matchanswer)
            }
            else {
                globalvalue = true
                option1img.image = UIImage(named:"")
                CheckAnswer.remove(Matchanswer)

            }
            
        }
        if sender.tag == 1{
            if globalvalue == true{
                globalvalue = false
                option1aImg.image = UIImage(named:"click")
                Matchanswer = self.option1a.text!
                print(Matchanswer)
                CheckAnswer.add(Matchanswer)
print(CheckAnswer)
            }
            else{
                globalvalue = true
                option1aImg.image = UIImage(named:"")
                CheckAnswer.remove(Matchanswer)
            }
            
            
        }
        if sender.tag == 2 {
            if globalvalue == true{
                globalvalue = false
                option1bImg.image = UIImage(named:"click")
                Matchanswer = self.option1b.text!
                CheckAnswer.add(Matchanswer)
                
            }
            else{
                globalvalue = true
                option1bImg.image = UIImage(named:"")
                CheckAnswer.remove(Matchanswer)

            }
            
            
        }
        if sender.tag == 3{
            if globalvalue == true {
                globalvalue = false
                option2Img.image = UIImage(named:"click")
                Matchanswer = self.option2.text!
                CheckAnswer.add(Matchanswer)
                
            }
            else {
                globalvalue = true
                option2Img.image = UIImage(named:"")
                CheckAnswer.remove(Matchanswer)

            }
        }
        if sender.tag == 4 {
            if globalvalue == true{
                globalvalue = false
                
                option2aImg.image = UIImage(named:"click")
                
                
                Matchanswer = self.option2a.text!
                CheckAnswer.add(Matchanswer)
                
            }
            else{
                globalvalue = true
                option2aImg.image = UIImage(named:"")
                CheckAnswer.remove(Matchanswer)

            }
            
            
        }
        if sender.tag == 5{
            if globalvalue == true{
                globalvalue = false
                
                option2bImg.image = UIImage(named:"click")
                Matchanswer = self.option2b.text!
                CheckAnswer.add(Matchanswer)
                
            }
            else{
                globalvalue = true
                option2bImg.image = UIImage(named:"")
                CheckAnswer.remove(Matchanswer)

            }
            // imagebox()
            
        }
        if sender.tag == 6{
            if globalvalue == true{
                globalvalue = false
                option3Img.image = UIImage(named:"click")
                Matchanswer = self.option3.text!
                
                CheckAnswer.add(Matchanswer)
                
            }
            else{
                globalvalue = true
                
                option3Img.image = UIImage(named:"")
                CheckAnswer.remove(Matchanswer)

            }
        }
        if sender.tag == 7{
            if globalvalue == true{
                globalvalue = false
                
                option3aImg.image = UIImage(named:"click")
                Matchanswer = self.option3a.text!
                CheckAnswer.add(Matchanswer)
                
            }
            else{
                globalvalue = true
                
                option3aImg.image = UIImage(named:"")
                CheckAnswer.remove(Matchanswer)

            }
        }
        if sender.tag == 8{
            if globalvalue == true{
                globalvalue = false
                option3bImg.image = UIImage(named:"click")
                Matchanswer = self.option3b.text!
                CheckAnswer.add(Matchanswer)
            }
            else{
                globalvalue = true
                
                option3bImg.image = UIImage(named:"")
                CheckAnswer.remove(Matchanswer)
            }
        }
    }
    
    @IBAction func NwxtButton(_ sender: Any) {
        var count = 0
        
        print(CheckAnswer)
        
        for X in CorrectAnswer  {
            if self.Matchanswer == X as! String {
                count += 1
                print(Matchanswer)
                print(CorrectAnswer)
            } }
        if count > 0  {
            print("correct answer")
            let next = self.storyboard?.instantiateViewController(withIdentifier: "SeventhVC") as! SeventhVC
            print(details)
            next.LastAnswer2 = "1"
            next.LastAnswer1 = AnswerStr
            timer.invalidate()
            print(AnswerStr)
            next.NExtTimer = timercount
            next.details = SecondQuestion
            
            questionNo += 1
            print(questionNo)
            next.quesNos = questionNo
            
            self.navigationController?.pushViewController(next, animated: true)
            
        }else{
            print("wrong answer")
            let next = self.storyboard?.instantiateViewController(withIdentifier: "SeventhVC") as! SeventhVC
            print(details)
            next.LastAnswer2 = "1"
            next.LastAnswer1 = AnswerStr
            next.NExtTimer = timercount
            timer.invalidate()
            print(questionNo)
            print(AnswerStr)
            next.quesNos = questionNo

            next.details = SecondQuestion
            
            self.navigationController?.pushViewController(next, animated: true)
        }
        
}
    //MARK:-
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
print(questionAns.count)
        return questionAns.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
       
            let cell = QuestionTable.dequeueReusableCell(withIdentifier: "SecondVCCell", for: indexPath) as! SecondVCCell
            
            let str2 = (((SecondQuestion[num] as! NSDictionary).value(forKey: "answers") as! NSArray).object(at: indexPath.row) as! NSDictionary).value(forKey: "answer")  as! String
            
            let strArray2 = str2.components(separatedBy: "\r\n")
            print(strArray2)
        
             
         let stranswer = (questionAns.object(at: indexPath.row)as! NSDictionary).value(forKey: "correct_answer") as! String
        
         self.CorrectAnswer.add(stranswer)
        
         print(self.CorrectAnswer)
         cell.dataArr = strArray2
        
        
         cell.dataAll = questionAns
            return cell
        

        
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat
    {
        let str2 = (((SecondQuestion[num] as! NSDictionary).value(forKey: "answers") as! NSArray).object(at: indexPath.row) as! NSDictionary).value(forKey: "answer")  as! String
        
        let strArray2 = str2.components(separatedBy: "\r\n")
        print(strArray2)
        
        
       // let stranswer = (questionAns.object(at: indexPath.row)as! NSDictionary).value(forKey: "correct_answer") as! String
        
      //  self.CorrectAnswer.add(stranswer)
        
     //   print(self.CorrectAnswer)
        //cell.dataArr = strArray2
        
        //line height = 20 *nooflines +
        
        var lineHieght:CGFloat = 0
        
        for index in strArray2{
            
            let font = UIFont(name: "HelveticaNeue", size: 25)!
            
            
            let textAttributes = [NSFontAttributeName: font]
            
            let size =   index.boundingRect(with: CGSize.init(width: tableView.frame.size.width-60, height: 2000), options: .usesLineFragmentOrigin, attributes: textAttributes, context: nil)//  MIN(size.height, 100.0);
            
            print(size.height)
            lineHieght = lineHieght + size.height
        }

    
        print(lineHieght)
        
        return lineHieght
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){

//        
    }
  
}


