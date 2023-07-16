//
//  ViewController.swift
//  Navigation
//
//  Created by Simbarashe Mupfururirwa on 2023/07/15.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var commissionValue: UITextField!
    @IBOutlet weak var priceValue: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func selectCommissionValue(_ sender: UIButton) {
        switch(sender.titleLabel?.text){
        case "5":
            commissionValue.text = "5"
        case "15":
            commissionValue.text = "15"
        case "25":
            commissionValue.text = "25"
        default:
            commissionValue.text = "No Commission value was provided."
        }
    }
    
    @IBAction func onSellTapped(_ sender: UIButton) {
        self.performSegue(withIdentifier: "goToCarDetailsScreen", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToCarDetailsScreen"{
            let destinationVC = segue.destination as! CarDetailsViewController
            destinationVC.carName = "Mazda"
            destinationVC.price = priceValue.text!
            destinationVC.commission = commissionValue.text!
        }
    }
}

