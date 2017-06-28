//
//  ViewController.swift
//  SwiftTutorial20170627
//
//  Created by 오라클자바 on 2017. 6. 27..
//  Copyright © 2017년 오라클자바. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func sayHello(_ sender: UIButton) {
        uiTitle.text = "Hello World"
    }
    
    @IBOutlet var uiTitle: UILabel!
    override func viewDidLoad() {
 		       super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

