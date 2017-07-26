//
//  LastLevelCell.swift
//  Wordnomics
//
//  Created by Omninos iOS on 17/07/17.
//  Copyright © 2017 Omninos_Solutions. All rights reserved.
//

import UIKit

class LastLevelCell: UITableViewCell,UITableViewDelegate,UITableViewDataSource {

   
    @IBOutlet weak var OptionLabel: UILabel!

    @IBOutlet weak var CheckImage: UIImageView!
   
    @IBOutlet weak var InnerTable: UITableView!
    var dataArr:[String] = []
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
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
        InnerTable.register(LastInnerCell.classForCoder(), forCellReuseIdentifier: "LastInnerCell")
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
        
        let cell = InnerTable.dequeueReusableCell(withIdentifier: "LastInnerCell", for: indexPath as IndexPath) as! LastInnerCell
        cell.backgroundColor = UIColor.clear
        cell.textLabel?.text = dataArr[indexPath.row]
        //cell.InnerLabel?.text = dataArr[indexPath.row]
        print(dataArr[indexPath.row])
        return cell
    }

}
