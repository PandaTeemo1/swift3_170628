//
//  ValueResultViewController.swift
//  SwiftTutorial20170627
//
//  Created by 오라클자바 on 2017. 6. 28..
//  Copyright © 2017년 오라클자바. All rights reserved.
//

import UIKit

class ValueResultViewController: UIViewController {

    @IBOutlet var labelEmail: UILabel!
    @IBOutlet var labelUpdate: UILabel!
    @IBOutlet var labelInterval: UILabel!
    
    var email:String = ""
    var update:Bool = false
    var interval:Double = 0.0
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        labelEmail.text = email
        labelUpdate.text = update == true ? "Update" : "Not Update"
        labelInterval.text = "\(Int(interval))"
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
