//
//  ResultViewController.swift
//  CalculoIMC
//
//  Created by Rodrigo Telles on 11/04/23.
//

import UIKit

class ResultViewController: UIViewController {
    
    var imcValue: String?
    var advice: String?
    var color: UIColor?

    @IBOutlet weak var imcLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        imcLabel.text = imcValue
        adviceLabel.text = advice
        view.backgroundColor = color
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    

}
