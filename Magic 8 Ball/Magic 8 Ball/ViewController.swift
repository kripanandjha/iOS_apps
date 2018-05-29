//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by project on 5/28/18.
//  Copyright © 2018 Kripanand Jha. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    let ballArray:[String] = ["ball1","ball2","ball3","ball4","ball5"]
    var randomBAllNumber : Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        newBallImage()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
 
    @IBAction func askButtonPressed(_ sender: Any) {
        newBallImage()
    }
    
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        newBallImage()
    }
    func newBallImage() {
        randomBAllNumber = Int(arc4random_uniform(5))
        // Do any additional setup after loading the view, typically from a nib.
        imageView.image = UIImage(named: ballArray[randomBAllNumber])
    }
}

