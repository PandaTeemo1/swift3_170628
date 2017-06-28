//: Playground - noun: a place where people can play

import UIKit

//method
struct Resolution{
    var width = 0
    var height = 0
    func desc()->String{
        let desc = "resolution is \(self.width)\(self.height)"
        return desc
    }
}

struct MyPoint{
    var x=0.0, y=0.0
    mutating func move(deltaX x:Double, deltaY y:Double){
        self.x = x
        self.y = y
    }
}

class TypeClass{
    class func myFunctypeClass(){
        
    }
}
TypeClass.myFunctypeClass()
var tc = TypeClass()
tc.myFunctypeClass()

//property observer
struct Job{
    var income: Int = 0{
        willSet(newIncome){
            print("income will be \(newIncome)")
        }
        didSet{
            if income>oldValue{
                print("income increase\(income-oldValue)")
            }else{
                print("income decrease\(oldValue-income)")
            }
        }
    }
}
struct TypeTest{
    static var sTest = "hello type property"
}
TypeTest.sTest
var job = Job(income:100)
job.income=200

//class/struct
struct MyLength{
    let startValue:Int
    var length:Int
}
var myLength = MyLength(startValue:10, length:20)
print(myLength.length)

class MyCreate{
    init(){
        print("MyCreate")
    }
}

class LazyTest{
    var base = 0
    lazy var late = MyCreate()
    
    init(){
        print("Lazy Test!!")
    }
}
let lz = LazyTest()
lz.late

struct MyRect{
    var originX:Double=0.0
    var originY:Double=0.0
    var sizeX:Double=0.0
    var sizeY:Double=0.0
    
    var centerX:Double{
        get{
            return originX + (sizeX/2)
        }
        set(newCenterX){
            originX = newCenterX - (sizeX/2)
        }
    }
    var centerY:Double{
        get{
            return originY + (sizeY/2)
        }
        set(newCenterY){
            originY = newCenterY - (sizeY/2)
        }
    }
    
    
}
var square = MyRect(originX: 0.0, originY: 0.0, sizeX: 10.0, sizeY: 10.0)
print("center :\(square.centerX), \(square.centerY)")



//closure
var cf1 = {()->() in
	print("closure")
}
cf1()

let cf2 = {(s1:Int, s2:String)->() in
    print("s1 : \(s1) s2:\(s2)")
}
cf2(1,"Hello")

func order(s1:Int, s2:Int)->Bool{
    if s1>s2{
        return true
    }else{
        return false
    }
}
let myArray = [1,9,5,7,3,2]
//myArray.sort(by: order)

myArray.sorted(by: {return $0>$1})





/*func myFuncP1(param:Int)->Int{
    return param+1
}
func myFuncP2(base:Int, function f:(Int)->Int)->Int{
    return f(base)
}
myFuncP2(base:10, function: myFuncP1)
func outerFunc(base:Int)->(Int)->String{
    func innerFunc(inc:Int)->String{
        return "return \(inc)"
    }
    return innerFunc
}
let nf1 = outerFunc(base: 3)
let nf2 = nf1(10)

func outerFunc2(base:Int)->Int{
    let value = base+20
    func innerFunc2(inc:Int)->Int{
        return inc+value
    }
    return innerFunc2
}

let nf3 = outerFunc2(base: 10)
let nf4 = nf3(10)


//function
func sayHello(){
    print("hello world")
}
sayHello()

func sayHello1()->String{

    return "hello world"
}
print(sayHello1())

func sayHello2(name:String)->String{
    return "hello \(name)"
}

var str = "Hello, playground"
var myVal:Int?
myVal = 3
print(myVal)

//forced unwrapping
if myVal != nil{
    var res = myVal! + 4
    print(res)
}else{
    print("myValues is nil")
}
//optional binding
if let val = myVal{
    print(val)
}else {
    print("myValue is nil")
}

var capital = ["kr":"seoul", "en":"london", "fr":"paris"]
if let val = capital["jp"]{
    print(val)
}

if myVal == 3{
    print("myvalue is 3")
}else {
    print("myValue is not 3")
}

func plus(a:Int, b:Int)->Int{
    return a+b
}
func minus(a:Int, b:Int)->Int{
    return a-b
}
func mutiply(a:Int, b:Int)->Int{
    return a*b
}
func divide(a:Int, b:Int)->Int{
    guard b!=0 else {
        return 0
    }
    return a/b
}

func calc(_ operand:String)->(Int,Int)->Int{
    switch operand {
    case "+":
        return plus
    case "-":
        return minus
    case "*":
        return mutiply
    case "/":
        return divide
    default:
        return plus
    }
}

let c = calc("*")
c(3,4)*/
