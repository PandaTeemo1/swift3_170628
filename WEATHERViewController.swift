//
//  WEATHERViewController.swift
//  SwiftTutorial20170627
//
//  Created by 오라클자바 on 2017. 6. 29..
//  Copyright © 2017년 ParkD. All rights reserved.
//

import UIKit

class WEATHERViewController: UIViewController, XMLParserDelegate {

    var parser:XMLParser!
    class Weather{
        var hour:Int = 0
        var day:Int = 0
        var wfKor:String = ""
        var temp:Double = 0.0
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
        
        for data in weaList{
            print(data)
        }
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
            weather.hour = Int(string)!
            bHour = false
        }else if(bDay){
            weather.day = Int(string)!
            bDay = false
        }else if(bTemp){
            weather.temp = Double(string)!
            bTemp = false
        }else if(bWfKor){
            weather.wfKor = string
            bWfKor = false
        }
    }
    
}
