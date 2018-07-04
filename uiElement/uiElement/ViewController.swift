//
//  ViewController.swift
//  uiElement
//
//  Created by project on 6/23/18.
//  Copyright © 2018 Kripanand Jha. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
       // let square = UIView(frame: CGRect(x:50,y:50,width:100,height:100))
        let square = UIView(frame: CGRect(x:self.view.frame.width/2 - 50,y:self.view.frame.height/2 - 50,width:100,height:100))
        square.backgroundColor = UIColor.red
        self.view.addSubview(square)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

