//
//  CarDetailsViewController.swift
//  Navigation
//
//  Created by Simbarashe Mupfururirwa on 2023/07/15.
//

import UIKit

class CarDetailsViewController: UIViewController {
    
    var carName = ""
    var price = ""
    var commission = ""

    @IBOutlet weak var commissionValueLabel: UILabel!
    @IBOutlet weak var priceValueLabel: UILabel!
    @IBOutlet weak var carNameLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        carNameLabel.text = carName
        priceValueLabel.text = price
        commissionValueLabel.text = commission
    }

    @IBAction func onBackTapped(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
}
