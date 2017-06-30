//
//  XMLViewController.swift
//  SwiftTutorial20170627
//
//  Created by 오라클자바 on 2017. 6. 29..
//  Copyright © 2017년 ParkD. All rights reserved.
//

import UIKit

class XMLViewController: UIViewController, XMLParserDelegate {

    var parser:XMLParser!
    class PizzaData{
        var name:String = ""
        var cost:Int = 0
        var desc:String = ""
    }
    //레퍼런스 타입으로 동작
    var pizza = PizzaData()
    var dataList = [PizzaData]()
    var bName = false
    var bCost = false
    var bDesc = false
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let addr = "http://api.androidhive.info/pizza/?format=xml"
        
        let url = URL(string: addr)
        parser = XMLParser(contentsOf: url!)
        parser.delegate = self
        parser.parse()
        // Do any additional setup after loading the view.
        
        for data in dataList{
            print(data)
        }
    }
    
    func parser(_ parser: XMLParser, didStartElement elementName: String, namespaceURI: String?, qualifiedName qName: String?, attributes attributeDict: [String : String] = [:]) {
        
        switch elementName{
        case "item":
            pizza = PizzaData()
            dataList.append(pizza)
        case "name":
            bName = true
        case "cost":
            bCost = true
        case "description":
            bDesc = true
        default:
            break;
        }
        
        if elementName == "name"{
            bName = true
        }
    }
    func parser(_ parser: XMLParser, foundCharacters string: String) {
        //어떤 특정한 캐릭터를 읽었음
        if bName {
            pizza.name = string
            bName = false
        }else if(bCost){
            pizza.cost = Int(string)!
            bCost = false
        }else if(bDesc){
            pizza.desc = string
            bDesc = false
        }
    }
}
