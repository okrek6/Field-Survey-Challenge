//
//  ObservationClassificationDetailViewController.swift
//  Field Survey Challenge
//
//  Created by Brendan Krekeler on 7/20/18.
//  Copyright © 2018 Brendan Krekeler. All rights reserved.
//

import UIKit

class ObservationClassificationDetailViewController: UIViewController {

    var classificationObservation: ClassificationObservation?
    
    var dateFormatter = DateFormatter()
    
    @IBOutlet weak var classificationIconImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .medium
        
        classificationIconImageView.image = classificationObservation?.classification.image
        titleLabel.text = classificationObservation?.title
        
        if let date = classificationObservation?.date {
            dateLabel.text = dateFormatter.string(from: date)
        } else {
            dateLabel.text = " "
        }
        
        
        // Do any additional setup after loading the view.
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
