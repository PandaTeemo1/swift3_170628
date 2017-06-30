//
//  AlertViewController.swift
//  SwiftTutorial20170627
//
//  Created by ParkD on 2017. 6. 28..
//  Copyright © 2017년 ParkD. All rights reserved.
//

import UIKit

class AlertViewController: UIViewController {

    @IBAction func onBtnClick(_ sender: Any) {
        let alert = UIAlertController(title: "title", message: "message", preferredStyle: .alert)
        
        let action = UIAlertAction(title: "action title", style: .cancel, handler: nil)
        alert.addAction(action)
        
        alert.addTextField(configurationHandler: {(textField:UITextField) in
            textField.placeholder = "input id"
        })
        
        alert.addTextField(configurationHandler: {(textField:UITextField) in
            textField.placeholder = "input password"
            textField.isSecureTextEntry = true
        })
        
//        let action2 = UIAlertAction(title: "action2", style: .default, handler: nil)
//        alert.addAction(action2)
//        
//        let action3 = UIAlertAction(title: "action3", style: .destructive, handler: nil)
//        alert.addAction(action3)
        
        present(alert, animated: true, completion: nil)
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
