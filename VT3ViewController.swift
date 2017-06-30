//
//  VT3ViewController.swift
//  SwiftTutorial20170627
//
//  Created by ParkD on 2017. 6. 27..
//  Copyright © 2017년 ParkD. All rights reserved.
//

import UIKit

class VT3ViewController: UIViewController {

    @IBAction func moveNext(_ sender: Any) {
        if let uvc = self.storyboard?.instantiateViewController(withIdentifier: "SecondVC"){
            self.navigationController?.pushViewController(uvc, animated: true)
        }
        
//        let uvc2 = self.storyboard!.instantiateViewController(withIdentifier: "SecondVC")
//        self.navigationController!.pushViewController(uvc2, animated: true)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
