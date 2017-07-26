//
//  TeachersTableViewCell.swift
//  Wordnomics
//
//  Created by Omninos Android Mac on 5/20/17.
//  Copyright © 2017 Omninos_Solutions. All rights reserved.
//

import UIKit

class TeachersTableViewCell: UITableViewCell {

    
    @IBOutlet weak var bg: UIImageView!
    
    @IBOutlet weak var teacherimg: UIImageView!
    
    @IBOutlet weak var discription: UILabel!
    
    
    @IBOutlet weak var company: UILabel!
    
    @IBOutlet weak var star1: UIImageView!
    
    
    @IBOutlet weak var star2: UIImageView!
    
    
    @IBOutlet weak var star3: UIImageView!
    
    @IBOutlet weak var star4: UIImageView!
    
    @IBOutlet weak var star5: UIImageView!
    
    @IBOutlet weak var favt: UIButton!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

           }

}
