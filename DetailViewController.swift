//
//  DetailViewController.swift
//  SwiftTutorial20170627
//
//  Created by ParkD on 2017. 6. 29..
//  Copyright © 2017년 ParkD. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    var detailTitle = ""
    var detailDesc = ""
    var detailPoint = 0.0
    
    @IBOutlet var pointLabel: UILabel!
    @IBOutlet var descLabel: UILabel!
    @IBOutlet var titleLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        titleLabel.text = detailTitle
        descLabel.text = detailDesc
        pointLabel.text = "\(detailPoint)"
    }

    

}
