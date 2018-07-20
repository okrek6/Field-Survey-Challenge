//
//  ClassificationObservationJSONParser.swift
//  Field Survey Challenge
//
//  Created by Brendan Krekeler on 7/19/18.
//  Copyright © 2018 Brendan Krekeler. All rights reserved.
//

import Foundation

class ClassificationObservationJSONParser{
    
    static let dateFormatter = DateFormatter()
    
    class func parse(  data: Data) -> [ClassificationObservation] {
        var classificationObservations = [ClassificationObservation]()
        dateFormatter.dateFormat = "YYYY-MM-dd HH:mm"
        
        if let json = try? JSONSerialization.jsonObject(with: data, options: []),
            let root = json as? [String: Any],
            let status = root ["status"] as? String,
            status == "ok" {
            
            if let observations = root ["observations"] as? [Any] {
                 for observation in observations {
                     if let observation = observation as? [String: String] {
                         if let classificationName = observation ["classification"],
                            let title = observation ["title"],
                            let description = observation ["description"],
                            let dateString = observation ["date"],
                            let date = dateFormatter.date(from: dateString) {
                            
                            if let classificationObservation = ClassificationObservation(classificationName: classificationName, title: title, description: description, date: date){
                                classificationObservations.append(classificationObservation)
                            }
                        }
                    }
                }
            }
            
        }
        
        return classificationObservations
    }
    
}
