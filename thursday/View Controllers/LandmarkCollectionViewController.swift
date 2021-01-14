//
//  LandmarkCollectionViewController.swift
//  thursday
//
//  Created by Chris Withers on 1/14/21.
//

import UIKit



class LandmarkCollectionViewController: UICollectionViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    var selectedCountry = "usa"

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: UICollectionViewDataSource

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
         return LandmarkController.france.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
       guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "landmarkCell", for: indexPath) as? LandmarkCollectionViewCell else {return UICollectionViewCell()}
        print("Cell")
        
        if selectedCountry == "usa" {
            cell.displayLandmark(landmark: LandmarkController.unitedStates[indexPath.row])
        }else{
            cell.displayLandmark(landmark: LandmarkController.france[indexPath.row])
        }
        
        
        return cell
    }
}

extension LandmarkCollectionViewController: UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = view.frame.width / 2
        return CGSize(width: width - 20, height: width + 30)
    }
}
