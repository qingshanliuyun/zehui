//: Playground - noun: a place where people can play

import UIKit
/**
 *  闭包
 */
var str = "Hello, playground"

let studname = {
    print("Welcome to Swift Closures")
}
studname()

let divide = {
    (val1: Int, val2: Int) -> Int in
    return val1 / val2
}
let result = divide(200, 20)
print(result)

//  两个字符串比较大小
func ascend(s1: String, s2: String) -> Bool {
    return s1 > s2
}
let stringcmp = ascend("swift", s2: "great")
print(stringcmp)

let sum = {(no1: Int, no2: Int) -> Int in
return no1 + no2
}
let digits = sum(20, 30)
print(digits)

let count = [5, 10, -6, 75, 20]
let descending = { (no1: Int, no2: Int) -> Int in
    return no1 > no2 ? no1: no2
}
var results = descending(10, 5)

let sub = {(no1: Int, no2: Int) -> Int in
    return no1 - no2
}
let digit = sub(10, 20)
print(digit)

//  声明简写参数名称作为闭包
var shorthand : (String, String) -> String
shorthand = {$1 }   //  $0, $1分别指第一和第二个字符串参数
print(shorthand("100", "200"))

//  排序
let numb = [98, 23, -56, 11, 86]
var sortedNumbers = numb.sort()
let  asc = numb.sort(>)

//  闭包作为尾随包
//  传递这个函数的最后一个参数到闭包表达式使用"尾随闭包"声明. 它使用{}写在函数()外部. 

















































