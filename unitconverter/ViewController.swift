//
//  ViewController.swift
//  unitconverter
//
//  Created by Zoe L on 2021/01/20.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var inputField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func getVal(_ sender: Any) {
        let userInput: String = inputField.text!
        let result: String = converter(string: userInput)
        
        resultLabel.text = result
    }

}

