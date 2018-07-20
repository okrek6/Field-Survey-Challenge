//
//  ClassificationObservationJSONLoader.swift
//  Field Survey Challenge
//
//  Created by Brendan Krekeler on 7/20/18.
//  Copyright © 2018 Brendan Krekeler. All rights reserved.
//

import Foundation

class ClassificationObservationJSONPLoader {
    
    class func load(filename: String) -> [ClassificationObservation] {
        var observations = [ClassificationObservation] ()
        
        if let path = Bundle.main.path(forResource: filename, ofType: "json"),
           let data = try? Data(contentsOf: URL(fileURLWithPath: path)){
            observations = ClassificationObservationJSONParser.parse(data: data)
        }
        
        return observations
    }
    
}
