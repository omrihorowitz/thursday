//
//  Landmark.swift
//  thursday
//
//  Created by Chris Withers on 1/14/21.
//

import UIKit

class Landmark {
    let name: String
    let photo: UIImage?
    let country: String
    
    init(name: String, photo: UIImage?, country: String) {
        self.name = name
        self.photo = photo
        self.country = country
    }
}

extension Landmark: Equatable {
    static func == (lhs: Landmark, rhs: Landmark) -> Bool {
        lhs.name == rhs.name && lhs.photo == rhs.photo && lhs.country == rhs.country
    }
    
    
}
