//
//  LandmarkCollectionViewCell.swift
//  thursday
//
//  Created by Chris Withers on 1/14/21.
//

import UIKit


class LandmarkCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var landMarkImageView: UIImageView!
    
    func displayLandmark(landmark: Landmark){
        landMarkImageView.image = landmark.photo
        landMarkImageView.contentMode = .scaleAspectFill
    }
    
}
