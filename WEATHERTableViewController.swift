//
//  WEATHERTableViewController.swift
//  SwiftTutorial20170627
//
//  Created by 오라클자바 on 2017. 6. 29..
//  Copyright © 2017년 ParkD. All rights reserved.
//

import UIKit

class WEATHERTableViewController: UITableViewController, XMLParserDelegate {

    var parser:XMLParser!
    class Weather{
        var hour:String = ""
        var day:Int = 0
        var wfKor:String = ""
        var temp:String = ""
    }
    var weather = Weather()
    var weaList = [Weather]()
    var bHour = false
    var bDay = false
    var bWfKor = false
    var bTemp = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let addr = "http://www.kma.go.kr/wid/queryDFSRSS.jsp?zone=1159068000"
        let url = URL(string: addr)
        parser = XMLParser(contentsOf: url!)
        parser.delegate = self
        parser.parse()
       
        
        
    }
    func parser(_ parser: XMLParser, didStartElement elementName: String, namespaceURI: String?, qualifiedName qName: String?, attributes attributeDict: [String : String] = [:]) {
        switch elementName{
        case "data":
            weather = Weather()
            weaList.append(weather)
        case "hour":
            bHour = true
        case "day":
            bDay = true
        case "temp":
            bTemp = true
        case "wfKor":
            bWfKor = true
        default:
            break;
        }
    }
    func parser(_ parser: XMLParser, foundCharacters string: String) {
        if bHour {
            weather.hour = string
            bHour = false
        }else if(bDay){
            weather.day = Int(string)!
            bDay = false
        }else if(bTemp){
            weather.temp = string
            bTemp = false
        }else if(bWfKor){
            weather.wfKor = string
            bWfKor = false
        }
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return weaList.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "weaListCell", for: indexPath) as! WEATHERTableViewCell

        let row = weaList[indexPath.row]
        var d = Date()
        d.addTimeInterval(TimeInterval(60*60*24*row.day))
        let f = DateFormatter()
        f.dateFormat = "yyyy년 MM월 dd일"
        
        /*if(row.day == 0){
            
        }else if(row.day == 1){
            cell.dayLabel.text = "내일"
        }else if(row.day == 2){
            cell.dayLabel.text = "모레"
        }*/
        cell.dayLabel.text = f.string(from : d)
        cell.hourLabel.text = "\(row.hour)시"
        cell.tempLabel.text = "\(row.temp)C"
        cell.wfKorLabel.text = "\(row.wfKor)"
        if(row.wfKor == "구름 많음"){
            cell.icon.image = UIImage(named:"구름조금.png")
        }else if(row.wfKor == "흐림"){
            cell.icon.image = UIImage(named:"흐림.jpeg")
        }else if(row.wfKor == "맑음"){
            cell.icon.image = UIImage(named:"해.PNG")
        }else if(row.wfKor == "비"){
            cell.icon.image = UIImage(named:"비.jPEG")
        }
        return cell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        print(weaList[indexPath.row].day)
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let detailVC = segue.destination as! WeatherDetailViewController
        let indexPath = self.tableView.indexPathForSelectedRow!
        let row = weaList[indexPath.row]
        detailVC.labelDay.text = "(\row.day)"
        detailVC.labelHour.text = row.hour
        detailVC.labelTemp.text = row.temp
        detailVC.labelWfKor.text = row.wfKor
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
