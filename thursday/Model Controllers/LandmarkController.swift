//
//  LandmarkControllers.swift
//  thursday
//
//  Created by Chris Withers on 1/14/21.
//

import UIKit

class LandmarkController {
    static let france = [Landmark(name: "Eiffel Tower", photo: UIImage(named: "eiffelTower"), country: "France"),
                  Landmark(name: "L'arc de Triomphe", photo: UIImage(named: "arcDeTriomphe"), country: "France"),
                  Landmark(name: "Sacre Coeur", photo: UIImage(named: "sacreCouer"), country: "France"),
                  Landmark(name: "Grande Musee", photo: UIImage(named: "grandMusee"), country: "France"),
                  Landmark(name: "Tour Montparnasse", photo: UIImage(named: "tourM"), country: "France"),
                  Landmark(name: "Mont Saint-Michel", photo: UIImage(named: "montS"), country: "France")]
    
    static let unitedStates = [Landmark(name: "Golden Gate Bridge", photo: UIImage(named: "goldenGate"), country: "USA"),
                        Landmark(name: "White House", photo: UIImage(named: "whitehouse"), country: "USA"),
                        Landmark(name: "One World Trade Center", photo: UIImage(named: "oneWorld"), country: "USA"),
                        Landmark(name: "Times Square", photo: UIImage(named: "timesSquare"), country: "USA"),
                        Landmark(name: "Library of Congress", photo: UIImage(named: "libraryCongress"), country: "USA"),
                        Landmark(name: "Lincoln Memorial", photo: UIImage(named: "lincoln"), country: "USA")]
    
}
