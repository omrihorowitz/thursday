//
//  CountryChoiceViewController.swift
//  thursday
//
//  Created by Chris Withers on 1/14/21.
//

import UIKit

protocol CountrySelectionDelegate: AnyObject{
    func countryChosen(country: String)
}

class CountryChoiceViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    weak var delegate: CountrySelectionDelegate?
    
    @IBAction func usaFlagChosen(_ sender: Any) {
        delegate?.countryChosen(country: "usa")
        self.dismiss(animated: true)
    }
    
    @IBAction func franceFlagChosen(_ sender: Any) {
        delegate?.countryChosen(country: "france")
        self.dismiss(animated: true)
    }
    
    
    
}
