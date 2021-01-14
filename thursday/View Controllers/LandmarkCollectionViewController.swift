//
//  LandmarkCollectionViewController.swift
//  thursday
//
//  Created by Chris Withers on 1/14/21.
//

import UIKit



class LandmarkCollectionViewController: UICollectionViewController {

    
    //MARK: - Properties
    var selectedCountry = "france"
    var displayedLandmarks: [Landmark] = []
    
    
    //MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "chooseCountry"{
            let destination = segue.destination as? CountryChoiceViewController
            destination?.delegate = self
        }
    }
    

    // MARK: UICollectionViewDataSource

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
         return LandmarkController.france.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
       guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "landmarkCell", for: indexPath) as? LandmarkCollectionViewCell else {return UICollectionViewCell()}
        
        if selectedCountry == "usa" {
            cell.displayLandmark(landmark: LandmarkController.unitedStates[indexPath.row])
        }else{
            cell.displayLandmark(landmark: LandmarkController.france[indexPath.row])
        }
        
        return cell
    }

    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        presentAlert()
    }
    
    
    func presentAlert(){
        
        var alertController: UIAlertController
        
        if selectedCountry == "usa" {
            alertController = UIAlertController(title: "Merica!", message: nil, preferredStyle: .alert)
        }else{
            alertController = UIAlertController(title: "Oui Oui!", message: nil, preferredStyle: .alert)
        }
        
        let doneAction = UIAlertAction(title: "Better grab my passport!", style: .cancel)
        
        
        alertController.addAction(doneAction)
        
        
        present(alertController, animated: true, completion: nil)
    }
    
    
    
}

extension LandmarkCollectionViewController: UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = view.frame.width / 2
        return CGSize(width: width - 20, height: width + 30)
    }
}

extension LandmarkCollectionViewController: CountrySelectionDelegate {
    func countryChosen(country: String) {
        selectedCountry = country
        collectionView.reloadData()
        
        
    }
    
    
}
