//
//  VT1ViewController.swift
//  SwiftTutorial20170627
//
//  Created by 오라클자바 on 2017. 6. 27..
//  Copyright © 2017년 오라클자바. All rights reserved.
//

import UIKit

class VT1ViewController: UIViewController {

    @IBAction func moveNext(_ sender: Any) {
        let uvc = self.storyboard!.instantiateViewController(withIdentifier: "SecondVC")
        
        uvc.modalTransitionStyle = .partialCurl
        present(uvc, animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    
}
