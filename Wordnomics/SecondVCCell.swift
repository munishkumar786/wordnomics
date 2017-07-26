//
//  SecondVCCell.swift
//  Wordnomics
//
//  Created by Omninos iOS on 17/07/17.
//  Copyright © 2017 Omninos_Solutions. All rights reserved.
//

import UIKit

class SecondVCCell: UITableViewCell,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var OptionLabel: UILabel!
    @IBOutlet weak var OptionLabel2: UILabel!
    @IBOutlet weak var OptionLabel3: UILabel!
    @IBOutlet weak var CheckImage: UIImageView!
    
    @IBOutlet var InnerTable: UITableView!
    var dataArr:[String] = []
    var Matchanswer = String()
    var dataAll = NSArray()
    var dataArray = [   ["red","blue","green","yellow"]]
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func viewWillAppear(animated: Bool) {
       
        InnerTable.tableFooterView = UIView(frame: .zero)

           }
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style , reuseIdentifier: reuseIdentifier)
        setUpTable()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
       // setUpTable()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        setUpTable()
    }
    
    func setUpTable(){
        InnerTable = UITableView(frame: CGRect.zero, style:UITableViewStyle.plain)
        InnerTable.register(SecondInnerCell.classForCoder(), forCellReuseIdentifier: "SecondInnerCell")
        InnerTable.backgroundColor = UIColor.clear
        InnerTable.isScrollEnabled = false
        InnerTable?.delegate = self
        InnerTable?.dataSource = self
        self.addSubview(InnerTable!)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        InnerTable?.frame = CGRect.init(x: 0.2, y: 0.3, width: self.bounds.size.width-5, height: self.bounds.size.height-5)
    }
    
   
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
              return dataArr.count
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = InnerTable.dequeueReusableCell(withIdentifier: "SecondInnerCell", for: indexPath as IndexPath) as! SecondInnerCell
        InnerTable.tableFooterView = UIView(frame: .zero)
        /*
        if (indexPath.row % 2 == 0){
            cell.textLabel?.text = dataArr[indexPath.row]

        }else{
            cell.textLabel?.text = dataArr[indexPath.row]
        
        }
        */
        cell.sizeToFit()
        cell.textLabel?.numberOfLines = 0
        cell.textLabel?.text = dataArr[indexPath.row]
        
        //cell.InnerLabel?.text= dataArr[indexPath.row]
        print(dataArr[indexPath.row])
        return cell
    }
//    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat
//    {
//        
//        //cell.dataArr = strArray2
//        
//        return 30
//    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        
        self.Matchanswer = (dataAll.object(at: indexPath.row)as! NSDictionary).value(forKey: "answer") as! String
        
        print(Matchanswer)
        
    }
     func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        InnerTable.setNeedsLayout()
        InnerTable.layoutIfNeeded()
        return UITableViewAutomaticDimension
    }
    func colorForIndex(index: Int) -> UIColor {
        
        let itemCount = dataArr.count - 1
        let color = (CGFloat(index) / CGFloat(itemCount)) * 0.6
        return UIColor(red: 251.0, green: color, blue: 99.0, alpha: 151.0)
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell,
                   forRowAt indexPath: IndexPath) {
        cell.contentView.backgroundColor = colorForIndex(index: indexPath.row)
    }

    }

