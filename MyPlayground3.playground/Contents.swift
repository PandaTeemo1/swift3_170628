//: Playground - noun: a place where people can play

import UIKit

//error handling
enum DateParsingError : Error{
    case OversizeString
    case UndersizeString
}

// 2017-06-27
struct MyDate{
    var year:Int=0
    var month:Int=0
    var date:Int=0
}
func parseDate(param:String)throws->MyDate{
    guard param.characters.count == 10 else{
        if param.characters.count < 10{
            throw DateParsingError.UndersizeString
        }else{
            throw DateParsingError.OversizeString
        }
    }
    return MyDate()
}
do{
    var myDate = try parseDate(param: "1111")
}catch DateParsingError.UndersizeString{
    print("under size error")
}
var text = try parseDate(param: "1234")

//protocol
protocol SampleProtocol{
    var name:String { get set }
    var description:String { get }
    func excute(param:String)->String
    init()
    init(cmd:String)
}
class ImplParent{
    init(){
        print("implParent")
    }
}

class ImplProtocol:ImplParent,SampleProtocol{
    var name = "john"
    var description : String{
        return "name is \(name)"
    }
    func excute(param: String)->String{
        return "hello \(param)"
    }
    required init(cmd:String){
        print("init \(cmd)")
    }
    override 	required init(){
    
    }
}

class Man{
    var name:String?
    init(name:String){
        self.name = name
    }
}

protocol Job{
    func doWork()
}

extension Man:Job{
    func doWork() {
        print("\(self.name) is working")
    }
}
let man = Man(name:"john")
man.doWork()

//protocol inheritance
protocol A{
    func doA()
}
protocol B:class{
    func doB()
}
protocol C:A,B{
    func doC()
}
class ABC:C{
    func doA() {
    
    }
    func doB() {
    
    }
    func doC() {
    
    }
}

let abc : C = ABC()
abc.doC()
let a:A = ABC()
a.doA()

var str = "Hello, playground"

struct Resolution{
    var width = 0
    var height:Int

    init(width:Int){
        self.width = width
        height=0
    }
    init(height:Int){
        self.height=height
    }
}
var resolution = Resolution(width: 1024)

class Base{
    var baseValue:Double
    init(inputValue:Double){
        self.baseValue=inputValue
    }
}
class ExBase:Base{
    override init(inputValue: Double){
        super.init(inputValue:10.0)
    }
}

struct Human{
    var name:String?
    var man = true
}

var boy:Human? = Human(name:"John", man:true)
if boy != nil{
    if boy!.name != nil{
        print("name is \(boy!.name!)")
    }
}
//optional binding
if let b = boy{
    if let name = b.name{
        print("name is \(name)")
    }
}

struct Company{
    var ceo:Human?
    var companyName :String?
}
var myCompany : Company? = Company(ceo: boy, companyName: "HelloCompany")

if let company = myCompany{
    if let ceo = company.ceo{
        if let name = ceo.name{
            print("ceo name is \(name)")
        }
    }
}

//extension
extension Double{
    var km:Double{ return self*1000.0 }
    var m:Double{ return self }
    var cm:Double{ return self/100.0 }
    var mm:Double{ return self/1000.0 }
    var description:String{
        return "\(self)km is \(self.km)m, \(self)cm is\(self.cm)m, \(self)mm is \(self.mm)m"
    }
}
2.km
5.5.cm
7.0.description

extension Int{
    func repeatition(task:()->()){
        for _ in 0..<self {
            task()
        }
    }
    mutating func square(){
        self = self*self
    }
}
let d = 3
d.repeatition (task: {()->() in
    print("hello world")
})
d.repeatition {
    print("hello world2")
}
