//
//  SecondViewController.swift
//  Delegates and protocols
//
//  Created by project on 7/4/18.
//  Copyright © 2018 Kripanand Jha. All rights reserved.
//

import UIKit

protocol sendData1 {
    func dataSent(label: String)
}
class SecondViewController: UIViewController {

    @IBOutlet weak var labeField: UILabel!
    @IBOutlet weak var textField: UITextField!
    var dataPassedOver = ""
    
    var delegate: sendData1?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labeField.text = dataPassedOver
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func buttonPressed(_ sender: Any) {
        delegate?.dataSent(label: textField.text!)
        dismiss(animated: true, completion: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
