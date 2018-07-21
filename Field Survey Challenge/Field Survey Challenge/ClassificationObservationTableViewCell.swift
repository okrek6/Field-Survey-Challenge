//
//  ClassificationObservationTableViewCell.swift
//  Field Survey Challenge
//
//  Created by Brendan Krekeler on 7/20/18.
//  Copyright © 2018 Brendan Krekeler. All rights reserved.
//

import UIKit

class ClassificationObservationTableViewCell: UITableViewCell {
    
    @IBOutlet weak var classificationIconImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
