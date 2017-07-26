//
//  LeaderBoardTableViewCell.swift
//  Wordnomics
//
//  Created by Omninos Android Mac on 5/19/17.
//  Copyright © 2017 Omninos_Solutions. All rights reserved.
//

import UIKit

class LeaderBoardTableViewCell: UITableViewCell {


    @IBOutlet weak var photo: UIImageView!
    
    
    @IBOutlet weak var name: UILabel!
    
    @IBOutlet weak var points: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

            }

}
