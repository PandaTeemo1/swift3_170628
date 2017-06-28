//
//  VT4ViewController.swift
//  SwiftTutorial20170627
//
//  Created by 오라클자바 on 2017. 6. 27..
//  Copyright © 2017년 오라클자바. All rights reserved.
//

import UIKit

class VT4ViewController: UIViewController {

    @IBAction func wind(_ sender: Any) {
        performSegue(withIdentifier: "ManualSegue", sender: self)
        //sender 누가 세그를 실행시키느냐
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func unwindVT4(segue:UIStoryboardSegue){
        
    }


}
