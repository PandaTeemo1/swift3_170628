//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


func myFunc1()->String{
    return "this is myFunc1"
}

//return 값으로 함수를 사용할 수 있다.
func myFunc2()->()->String{
    return myFunc1
}

let f2 = myFunc2
f2()