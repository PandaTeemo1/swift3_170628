//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

class Vehicle{
    var currentSpeed = 0.0
    
    var description : String{
        return "move \(currentSpeed) per hour"
        
    }
    func makeNose(){
        
    }
}

class Bicycle:Vehicle{
    var hasBasket = false
}

class Tandom:Bicycle{
    var passensers = 0
}


class Car:Vehicle{
    var gear = 0
    var engineLevel = 0
    
    override var currentSpeed: Double{
        get{
            return Double(engineLevel*50)
        }
        set{
        
        }
    }
    override var description: String{
        get{
            return "Car:enginLevel\(engineLevel) currentSpeed\(currentSpeed)"
        }
        set{
            print("New Value is \(newValue)")
        }
    }
}
let c = Car()
c.engineLevel = 5
c.currentSpeed
c.description = "New Class Car"
c.description


var b = Bicycle()
b is Vehicle

//up casting
var v : Vehicle = b as Vehicle  //upcasting
var b1 : Bicycle = v as! Bicycle    //downcasting

var v2 = Vehicle()
var b2 : Bicycle? = v2 as? Bicycle   //downcasting

if b2 != nil{
    print("b2 is not nil")
}

var obj:AnyObject = Tandom()

if var myTandom = obj as? Tandom{
    print("casting success")
}

func name(param:Any){
    print("\(param)")
}

name(param : 3)
name(param : false)

