//
//  WeatherDetailViewController.swift
//  SwiftTutorial20170627
//
//  Created by 오라클자바 on 2017. 6. 30..
//  Copyright © 2017년 ParkD. All rights reserved.
//

import UIKit

class WeatherDetailViewController: UIViewController {

    @IBOutlet var labelWfKor: UILabel!
    @IBOutlet var labelTemp: UILabel!
    @IBOutlet var labelHour: UILabel!
    @IBOutlet var labelDay: UILabel!
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
