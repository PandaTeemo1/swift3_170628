//
//  ValueResultViewController.swift
//  SwiftTutorial20170627
//
//  Created by ParkD on 2017. 6. 28..
//  Copyright © 2017년 ParkD. All rights reserved.
//

import UIKit

class ValueResultViewController: UIViewController {

    @IBOutlet var labelInterval: UILabel!
    @IBOutlet var labelUpdate: UILabel!
    @IBOutlet var labelEmail: UILabel!
    
    var email:String = ""
    var update:Bool = false
    var interval:Double = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        labelEmail.text = email
        labelUpdate.text = update == true ? "Update" : "Not Update"
        labelInterval.text = "\(Int(interval))분"
    
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
