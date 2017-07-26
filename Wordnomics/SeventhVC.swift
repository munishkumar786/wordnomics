 //
//  SeventhVC.swift
//  Wordnomics
//
//  Created by Omninos iOS on 12/07/17.
//  Copyright © 2017 Omninos_Solutions. All rights reserved.
//

import UIKit

class SeventhVC: UIViewController,UIScrollViewDelegate {
    var details = NSArray()
    var num = Int()
    var NExtTimer = Int()
    var LastAnswer1 = String()
    var LastAnswer2 = String()

    var quesNos = Int()
    var timer = Timer()
    var timercount = Int()
    var SelectedAnswers = NSMutableArray()
    var quesAnswer = NSMutableArray()
    var CorrectAnswer = NSMutableArray()
var Matchanswer = String()
    
    @IBOutlet weak var QuestionTable: UITableView!
    @IBOutlet weak var ScrollView: UIScrollView!
    @IBOutlet weak var QuestionNAme: UILabel!
    
    @IBOutlet weak var Option1: UILabel!
    @IBOutlet weak var Option2: UILabel!
    @IBOutlet weak var Option3: UILabel!
    @IBOutlet weak var Option4: UILabel!
    @IBOutlet weak var Option5: UILabel!
    @IBOutlet weak var Option6: UILabel!
    @IBOutlet weak var Option7: UILabel!
    @IBOutlet weak var Option8: UILabel!
    @IBOutlet weak var Option9: UILabel!
    @IBOutlet weak var Option10: UILabel!
    @IBOutlet weak var NextButton: UIButton!
    
    @IBOutlet var SecondTextView: UITextView!
    @IBOutlet var FirstTextView: UITextView!
    @IBOutlet weak var ThirdTextView: UITextView!
    @IBOutlet weak var FourthTextView: UITextView!
    @IBOutlet weak var FifthTextView: UITextView!
    @IBOutlet weak var SixthTextView: UITextView!
    @IBOutlet weak var SeventhTextView: UITextView!
    @IBOutlet weak var EighthTextView: UITextView!
    @IBOutlet weak var NinthTextView: UITextView!
    @IBOutlet weak var TenthTextView: UITextView!
    
    
    @IBOutlet weak var Img1: UIImageView!
    @IBOutlet weak var Img2: UIImageView!
    @IBOutlet weak var Img3: UIImageView!
    @IBOutlet weak var Img4: UIImageView!
    @IBOutlet weak var Img5: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(num)
        print(NExtTimer)
        print(LastAnswer1)
        print(LastAnswer2)

        print(quesNos)
        num = 2
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(SeventhVC.updateCounter), userInfo: nil, repeats: true)
        

        quesAnswer = (details[num] as! NSDictionary).value(forKey: "answers") as! NSArray as! NSMutableArray
        
  print(quesAnswer)
        
      
        //TextView
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(tapOnTextView(_:)))
        FirstTextView.addGestureRecognizer(tapGesture)
        
        let tapGesture1 = UITapGestureRecognizer(target: self, action: #selector(tapOnTextView(_:)))
        // FirstTextView.addGestureRecognizer(tapGesture)
        SecondTextView.addGestureRecognizer(tapGesture1)
        let tapGesture2 = UITapGestureRecognizer(target: self, action: #selector(tapOnTextView(_:)))
        // FirstTextView.addGestureRecognizer(tapGesture)
        ThirdTextView.addGestureRecognizer(tapGesture2)
        let tapGesture3 = UITapGestureRecognizer(target: self, action: #selector(tapOnTextView(_:)))
        // FirstTextView.addGestureRecognizer(tapGesture)
        FourthTextView.addGestureRecognizer(tapGesture3)
        let tapGesture4 = UITapGestureRecognizer(target: self, action: #selector(tapOnTextView(_:)))
        // FirstTextView.addGestureRecognizer(tapGesture)
        FifthTextView.addGestureRecognizer(tapGesture4)
        let tapGesture5 = UITapGestureRecognizer(target: self, action: #selector(tapOnTextView(_:)))
        // FirstTextView.addGestureRecognizer(tapGesture)
        SixthTextView.addGestureRecognizer(tapGesture5)
        let tapGesture6 = UITapGestureRecognizer(target: self, action: #selector(tapOnTextView(_:)))
        // FirstTextView.addGestureRecognizer(tapGesture)
        SeventhTextView.addGestureRecognizer(tapGesture6)
        let tapGesture7 = UITapGestureRecognizer(target: self, action: #selector(tapOnTextView(_:)))
        // FirstTextView.addGestureRecognizer(tapGesture)
        EighthTextView.addGestureRecognizer(tapGesture7)
        let tapGesture8 = UITapGestureRecognizer(target: self, action: #selector(tapOnTextView(_:)))
        // FirstTextView.addGestureRecognizer(tapGesture)
        NinthTextView.addGestureRecognizer(tapGesture8)
        let tapGesture9 = UITapGestureRecognizer(target: self, action: #selector(tapOnTextView(_:)))
        // FirstTextView.addGestureRecognizer(tapGesture)
        TenthTextView.addGestureRecognizer(tapGesture9)
        
  
        if self.LastAnswer1 == "1"
        {
            Img1.image = UIImage(named:"Right_Answer")
            print("1st right")
            
        }else{
            print("1st wrong")
            Img1.image = UIImage(named:"Wrong_Answer")
            
        }
        
        if self.LastAnswer2 == "1"
        {
            Img2.image = UIImage(named:"Right_Answer")
            
            print("second right")
            
   
        }else{
            print("second wrong")
            Img2.image = UIImage(named:"Wrong_Answer")
            
        }
        
       
        
        ScrollView.isScrollEnabled = true
        ScrollView.contentSize = CGSize(width: self.view.frame.size.width, height:self.NextButton.frame.origin.y + self.NextButton.frame.size.height + 10)
        
      
        let stranswer = ((details[num] as! NSDictionary).value(forKey: "answers") as! NSArray).value(forKey: "correct_answer")  as! NSArray
        
        
        let str = (((details[num] as! NSDictionary).value(forKey: "answers") as! NSArray).object(at: 0) as! NSDictionary).value(forKey: "answer")  as! String
        
        let strArray = str.components(separatedBy: "\r\n")
        print(strArray[0])
        FirstTextView.text! = strArray[0]
        
        
        let str1 = (((details[num] as! NSDictionary).value(forKey: "answers") as! NSArray).object(at: 1) as! NSDictionary).value(forKey: "answer")  as! String
        
        let strArray1 = str1.components(separatedBy: "\r\n")
        SecondTextView.text! = strArray1[0]
        
        let str2 = (((details[num] as! NSDictionary).value(forKey: "answers") as! NSArray).object(at: 2) as! NSDictionary).value(forKey: "answer")  as! String
        
        let strArray2 = str2.components(separatedBy: "\n")
        print(strArray2)
        ThirdTextView.text! = strArray2[0]
        
        let str3 = (((details[num] as! NSDictionary).value(forKey: "answers") as! NSArray).object(at: 3) as! NSDictionary).value(forKey: "answer")  as! String
        
        let strArray3 = str3.components(separatedBy: "\n")
        print(strArray3)
        FourthTextView.text! = strArray3[0]
        
        
        let str4 = (((details[num] as! NSDictionary).value(forKey: "answers") as! NSArray).object(at: 4) as! NSDictionary).value(forKey: "answer")  as! String
        
        let strArray4 = str4.components(separatedBy: "\n")
        print(strArray4)
        FifthTextView.text! = strArray4[0]
        
        let str5 = (((details[num] as! NSDictionary).value(forKey: "answers") as! NSArray).object(at: 5) as! NSDictionary).value(forKey: "answer")  as! String
        
        let strArray5 = str5.components(separatedBy: "\n")
        print(strArray5)
        SixthTextView.text! = strArray5[0]
        
        let str6 = (((details[num] as! NSDictionary).value(forKey: "answers") as! NSArray).object(at: 6) as! NSDictionary).value(forKey: "answer")  as! String
        
        let strArray6 = str6.components(separatedBy: "\n")
        print(strArray6)
        SeventhTextView.text! = strArray6[0]
        
        
        let str7 = (((details[num] as! NSDictionary).value(forKey: "answers") as! NSArray).object(at: 7) as! NSDictionary).value(forKey: "answer")  as! String
        
        let strArray7 = str7.components(separatedBy: "\n")
        print(strArray7)
        EighthTextView.text! = strArray7[0]
        
        
        let str8 = (((details[num] as! NSDictionary).value(forKey: "answers") as! NSArray).object(at: 8) as! NSDictionary).value(forKey: "answer")  as! String
        
        let strArray8 = str8.components(separatedBy: "\n")
        print(strArray8)
        NinthTextView.text! = strArray8[0]
        
        let str9 = (((details[num] as! NSDictionary).value(forKey: "answers") as! NSArray).object(at: 9) as! NSDictionary).value(forKey: "answer")  as! String
        
        let strArray9 = str9.components(separatedBy: "\n")
        print(strArray9)
        TenthTextView.text! = strArray9[0]
       
        
        //        let str10 = (((details[num] as! NSDictionary).value(forKey: "answers") as! NSArray).object(at: 2) as! NSDictionary).value(forKey: "answer")  as! String
        //
        //        let strArray10 = str10.components(separatedBy: "\n")
        //        print(strArray10)
        //        Option6.text! = strArray10[0]
}
    
    //MARK: Tap on textview
    @objc private final func tapOnTextView(_ tapGesture: UITapGestureRecognizer){
        
        var textview = tapGesture.view as! UITextView
        
        let point = tapGesture.location(in: textview)
        if let detectedWord = getWordAtPosition(point, _textview: textview)
        {
            textview.font = UIFont(name: (textview.font?.fontName)!, size: 15)
            print(detectedWord)
            
            
        }
    }
    
    private final func getWordAtPosition(_ point: CGPoint, _textview:UITextView) -> String?{
        if let textPosition = _textview.closestPosition(to: point)
        {
            if let range = _textview.tokenizer.rangeEnclosingPosition(textPosition, with: .word, inDirection: 1)
            {
                //  Converted with Swiftify v1.0.6395 - https://objectivec2swift.com/
                // var selectedTextRange: NSRange = range
                
                var attributedString = NSMutableAttributedString.init(string:_textview.text)
                
                //  Converted with Swiftify v1.0.6395 - https://objectivec2swift.com/
                var beginning: UITextPosition? = _textview.beginningOfDocument
                var selectedRange: UITextRange? = range
                var selectionStart: UITextPosition? = selectedRange?.start
                var selectionEnd: UITextPosition? = selectedRange?.end
                let location: Int = _textview.offset(from: beginning!, to: selectionStart!)
                let length: Int = _textview.offset(from: selectionStart!, to: selectionEnd!)
                //return NSRange(location: location, length: length)
                
                attributedString.addAttribute(NSBackgroundColorAttributeName, value: UIColor.white, range: NSRange(location: location, length: length))
                // iOS 7 fix, NOT working in iOS 8
                _textview.isScrollEnabled = false
                _textview.attributedText = attributedString
                _textview.isScrollEnabled = true
                
                return _textview.text(in: range)
            }
        }
        return nil
    }
    
    func updateCounter()
    {
        
        
        NExtTimer += 1
        print(NExtTimer)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
            let next = self.storyboard?.instantiateViewController(withIdentifier: "ScoreViewController") as! ScoreViewController
            print(details)
            next.LastAnswer3 = "1"
            next.LastAnswer1 = LastAnswer1
           next.LastAnswer2 = LastAnswer2
            timer.invalidate()
            //print(AnswerStr)
            next.timercount = NExtTimer
            //next.detail = details
            
           // questionNo += 1
           // print(questionNo)
            next.quesNous = quesNos
            
            self.navigationController?.pushViewController(next, animated: true)
            
        }else{
            print("wrong answer")
            let next = self.storyboard?.instantiateViewController(withIdentifier: "ScoreViewController") as! ScoreViewController
            print(details)
        //   next.AnswerStrqq4 = "0"
            next.LastAnswer3 = "1"

            next.LastAnswer1 = LastAnswer1
           next.LastAnswer2 = LastAnswer2
            next.quesNous = quesNos

            next.timercount = NExtTimer

            timer.invalidate()
           //   next.detail = details
            self.navigationController?.pushViewController(next, animated: true)
        }

    }
    
}
