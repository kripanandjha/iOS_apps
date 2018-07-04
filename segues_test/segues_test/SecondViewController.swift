//
//  SecondViewController.swift
//  segues_test
//
//  Created by project on 7/3/18.
//  Copyright © 2018 Kripanand Jha. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    var textPassedOver: String?
    @IBOutlet weak var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = textPassedOver
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
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
