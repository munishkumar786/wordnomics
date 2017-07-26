//
//  EighthVC.swift
//  Wordnomics
//
//  Created by Omninos iOS on 12/07/17.
//  Copyright © 2017 Omninos_Solutions. All rights reserved.
//

import UIKit

class EighthVC: UIViewController {
    var details = NSArray()
    var num = Int()
    var NExtTimer = Int()
    var LastAnswer = String()
    var quesNos = Int()
    var AnswerStrqq = String()

    @IBOutlet weak var QuestionName: UILabel!
    @IBOutlet weak var Question1: UILabel!
    @IBOutlet weak var Option1: UILabel!
    @IBOutlet weak var Option2: UILabel!
    @IBOutlet weak var Option3: UILabel!
    @IBOutlet weak var Option4: UILabel!
       
    override func viewDidLoad() {
        super.viewDidLoad()
        num = 4
        QuestionName.text! = (details[num] as! NSDictionary).value(forKey: "question")  as! String
        let stranswer = ((details[num] as! NSDictionary).value(forKey: "answers") as! NSArray).value(forKey: "correct_answer")  as! NSArray
        
        
        let str = (((details[num] as! NSDictionary).value(forKey: "answers") as! NSArray).object(at: 0) as! NSDictionary).value(forKey: "sub_question")  as! String
        
        let strArray = str.components(separatedBy: "\r\n")
        print(strArray[0])
        Question1.text! = strArray[0]

        let ansstr = (((details[num] as! NSDictionary).value(forKey: "answers") as! NSArray).object(at: 0) as! NSDictionary).value(forKey: "answer")  as! String
        
        let ansstrArray = ansstr.components(separatedBy: "   ")
        print(ansstrArray[0])
        Option1.text! = ansstrArray[0]
      

        
//        let str1 = (((details[num] as! NSDictionary).value(forKey: "answers") as! NSArray).object(at: 1) as! NSDictionary).value(forKey: "sub_question")  as! String
//        
//        let strArray1 = str1.components(separatedBy: "\r\n")
//        print(strArray1[0])
//        Option1.text! = strArray1[0]
//
//        let str2 = (((details[num] as! NSDictionary).value(forKey: "answers") as! NSArray).object(at: 2) as! NSDictionary).value(forKey: "sub_question")  as! String
//        
//        let strArray2 = str2.components(separatedBy: "\r\n")
//        print(strArray2[0])
//        Option1.text! = strArray2[0]
//
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
