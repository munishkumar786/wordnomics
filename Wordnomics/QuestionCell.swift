//
//  QuestionCell.swift
//  Wordnomics
//
//  Created by Omninos iOS on 14/07/17.
//  Copyright © 2017 Omninos_Solutions. All rights reserved.
//

import UIKit

class QuestionCell: UITableViewCell {

    @IBOutlet weak var OptionTitle: UILabel!
    @IBOutlet weak var CheckImage: UIImageView!
    @IBOutlet weak var SelectedButton: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
