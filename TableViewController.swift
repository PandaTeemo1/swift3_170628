//
//  TableViewController.swift
//  SwiftTutorial20170627
//
//  Created by ParkD on 2017. 6. 28..
//  Copyright © 2017년 ParkD. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    class MyData{
        var title:String=""
        var desc:String=""
        var point:Double=0.0
        var thumbnail:String="home-icon.png"
    }
    var dataList = [MyData]()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        for i in 1...100{
            let data = MyData()
            data.title = "title \(i)"
            data.desc = "desc \(i)"
            data.point = Double(i)
            
            dataList.append(data)
        }

    }
    



    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return dataList.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ListCell", for: indexPath) as! TableViewCell

        let row = dataList[indexPath.row]
//        let titleLabel = cell.viewWithTag(100) as? UILabel
//        let descLabel = cell.viewWithTag(101) as? UILabel
//        let pointLabel = cell.viewWithTag(102) as? UILabel
//        titleLabel?.text = row.title
//        descLabel?.text = row.desc
//        pointLabel?.text = "\(row.point)"
        cell.labelTitle.text = row.title
        cell.labelDesc.text = row.desc
        cell.labelPoint.text = "\(row.point)"
        cell.icon.image = UIImage(named: row.thumbnail)

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        print(dataList[indexPath.row].title)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let detailVC = segue.destination as! DetailViewController
        let indexPath = self.tableView.indexPathForSelectedRow!
        let row = dataList[indexPath.row]
        detailVC.detailTitle = row.title
        detailVC.detailDesc = row.desc
        detailVC.detailPoint = row.point
    }
    
    
    
    
    
    
    
    
}
