//
//  main.swift
//  CalcArrayPoints
//
//  Created by cmfeng on 10/10/16.
//  Copyright © 2016 cmfeng. All rights reserved.
//

import Foundation

//Build a calculator
//create four functions for add, subtract, multiply, divide
func add(left: Int, right: Int) -> Int {
    return (left + right)
}
func subtract(left: Int, right: Int) -> Int {
    return (left - right)
}
func multiply(left: Int, right: Int) -> Int {
    return (left * right)
}
func divide(left: Int, right: Int) -> Int {
    return (left / right)
}

//create a function that expects one of them along with two Ints
func mathOperation( left: Int, right : Int, operation: (Int, Int) -> Int) -> Int{
    return operation(left, right)
}

/* create two new functions for add/mul
instead of taking two Ints, take an array of Ints instead
return the result of (adding/multiplying) all of the elements */
func add(array: [Int]) -> Int{
    var result: Int = 0
    for i in array{
        result += i
    }
    return result
}
func multiply(array: [Int]) -> Int {
    var result: Int = 1
    for i in array{
        result *= i
    }
    return result
}

/*create two new functions (count, avg) that take an array of Ints
again, operate on the array and return the result
return the result*/
func count(array: [Int]) ->Int {
    return array.count
}
func average(array: [Int]) ->Int {
    var sum: Int = 0
    for i in array{
        sum += i
    }
    return (sum / (array.count))
}
//refactor all four down to another "generic math operation" approach
func reduce(array: [Int], operation: ([Int]) -> Int) -> Int {
    return operation(array)
}

//Adding points
//check tuple,and if non-two-arity tuples, if yes, add 0 to make two-arity tuple
/*
func checkTuple(a :(Int, Int)?) -> (Int, Int)？{
    if (a == nil) {
        return nil
    }
    var b = (0, 0)
    if (a.0 != nil) {
        b.0 = a.0
    }
    if (a.1 != nil){
        b.1 = a.1
    }
    return b
}

func add(p1 :(Int, Int)?, p2 :(Int, Int)?) -> (Int, Int){
    let a = checkTuple(a: p1)
    let b = checkTuple(a: p2)
    if (a == nil|| b == nil) {
        return (0, 0)
    }
    return (a.0 + b.0, a.1 + b.1)
}
func subtract(p1 :(Int, Int)?, p2 :(Int, Int)?) -> (Int, Int){
    let a = checkTuple(a: p1)
    let b = checkTuple(a: p2)
    if (a == nil|| b == nil) {
        return (0, 0)
    }
    return (a.0 - b.0, a.1 - b.1)
}
*/
func add(p1: (Int, Int), p2: (Int, Int)) -> (Int, Int){
    return (p1.0 + p2.0, p1.1 + p2.1)
}
func subtract(p1: (Int, Int), p2: (Int, Int)) -> (Int, Int){
    return (p1.0 - p2.0, p1.1 - p2.1)
}
//Dictionaries
//check dictionary, to handle nil and non-two-arity
func checkDi(d: [String: Double]?) -> [String: Double]? {
    var result = ["x" : 0.0, "y" : 0.0]
    if (d == nil) {
        return nil
    }
    if (d!["x"] != nil){
        result["x"] = d!["x"]
    }
    if (d!["y"] != nil) {
        result["y"] = d!["y"]
    }
    return result
}
//to handle nil of [String: Int], need to build anouther checkDi seperately for [String: Int]?
func add(p1: [String: Int]?, p2: [String: Int]?) -> [String: Int]? {
    if (p1 == nil || p2 == nil) {
        return nil
    }
    return ["x": (p1!["x"]! + p2!["x"]!), "y": (p1!["y"]! + p2!["y"]!)]
}//all the '!' ??


func subtract(p1: [String: Int], p2: [String: Int]) -> [String: Int]?{
    return ["x": (p1["x"]! - p2["x"]!), "y": (p1["y"]! - p2["y"]!)]
}//all the '!' ??

func add(p1: [String: Double]?, p2: [String: Double]?) -> [String: Double]? {
    let d1 = checkDi(d: p1)
    let d2 = checkDi(d: p2)
    if (d1 == nil || d2 == nil) {
        return nil
    }
    return ["x": (d1!["x"]! + d2!["x"]!), "y": (d1!["y"]! + d2!["y"]!)]//d1!["x"]!, the last '!"??
}
func subtract(p1: [String: Double]?, p2: [String: Double]?) -> [String: Double]? {
    let d1 = checkDi(d: p1)
    let d2 = checkDi(d: p2)
    if (d1 == nil || d2 == nil) {
        return nil
    }
    return ["x": (d1!["x"]! - d2!["x"]!), "y": (d1!["y"]! - d2!["y"]!)]
}

