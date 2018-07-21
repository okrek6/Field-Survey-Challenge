//
//  ObservationClassificationViewController.swift
//  Field Survey Challenge
//
//  Created by Brendan Krekeler on 7/20/18.
//  Copyright © 2018 Brendan Krekeler. All rights reserved.
//

import UIKit

class ObservationClassificationViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
var dateFormatter = DateFormatter()
    
    let classificationObservations = ClassificationObservationJSONPLoader.load(filename: "field_observations")
    
    @IBOutlet weak var classificationObservationTableView: UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .medium
        

        // Do any additional setup after loading the view.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return classificationObservations.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "observationClassificationCell", for: indexPath)
        if let cell = cell as? ClassificationObservationTableViewCell{
            let classificationObservation = classificationObservations[indexPath.row]
            cell.classificationIconImageView.image = classificationObservation.classification.image
            cell.titleLabel.text = classificationObservation.title
            cell.dateLabel.text = dateFormatter.string(from: classificationObservation.date)
        }
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? ObservationClassificationDetailViewController,
            let row = classificationObservationTableView.indexPathForSelectedRow?.row {
                destination.classificationObservation = classificationObservations[row]
        }
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
