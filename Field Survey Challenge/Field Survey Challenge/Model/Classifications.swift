//
//  Classifications.swift
//  Field Survey Challenge
//
//  Created by Brendan Krekeler on 7/18/18.
//  Copyright © 2018 Brendan Krekeler. All rights reserved.
//

import UIKit

enum Classification: String {
    case amphibian
    case bird
    case fish
    case insect
    case mammal
    case plant
    case reptile
    
    var image: UIImage? {
        return UIImage(named: self.rawValue + "Icon")
    }
}
