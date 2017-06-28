//
//  ViewController.swift
//  TextFieldEx
//
//  Created by 오라클자바 on 2017. 6. 25..
//  Copyright © 2017년 오라클자바. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var ageTextField: UITextField!
    
    @IBOutlet weak var resultLabel: UITextField!
    
    let cButton = UIButton(type: UIButtonType.custom)
    
    @IBAction func viewTouch(_ sender: UIControl) {
     
    }

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let image1 = UIImage(named: "버튼1.png")
        let image2 = UIImage(named: "버튼2.png")
        
        cButton.frame = CGRect(x: 100, y:380, width:120, height:50)
        cButton.setBackgroundImage(image1, for: UIControlState.normal)
        cButton.setTitle("Click", for: UIControlState.normal)
        
        cButton.setBackgroundImage(image2, for: UIControlState.highlighted)
        cButton.setTitle("highlighted", for: UIControlState.highlighted)
        
        self.view.addSubview(cButton)
        cButton.addTarget(self, action: #selector(cButtonClick), for: UIControlEvents.touchUpInside)
        
        nameTextField.delegate = self
        ageTextField.delegate = self
        
        
    }
    
    @IBAction func escapeKeyB(_ sender: Any){
        nameTextField.resignFirstResponder()
        ageTextField.resignFirstResponder()
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        nameTextField.resignFirstResponder()
        ageTextField.resignFirstResponder()
        return true
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        let max = 8
        let message : String = textField.text!
        
        if message.characters.count <= max
        {
            return true
        }else{
            return false
        }
    }
    
    func cButtonClick(){
        let resultStr = "name : " + nameTextField.text! + ", age : " + ageTextField.text!
        resultLabel.text = resultStr
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

