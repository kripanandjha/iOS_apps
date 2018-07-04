//
//  ViewController.swift
//  Delegates and protocols
//
//  Created by project on 7/4/18.
//  Copyright © 2018 Kripanand Jha. All rights reserved.
//

import UIKit

class ViewController: UIViewController,sendData1 {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonPressed(_ sender: Any) {
       
        performSegue(withIdentifier: "sendToView2", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "sendToView2" {
            let destinationVC = segue.destination as! SecondViewController
            destinationVC.dataPassedOver = textField.text!
            
            destinationVC.delegate = self
            
        }
    }
    func dataSent(label: String) {
        self.label.text = label
    }
    
}

