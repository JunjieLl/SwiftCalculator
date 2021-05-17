//
//  Calaulator.swift
//  Calculator SwiftUI
//
//  Created by Junjie Li on 5/7/21.
//

import Foundation

struct CalculatorModel{
    var result: String = "0"
    let buttons = ["AC","+/-","%","/","7","8","9","*","4","5","6","-","1","2","3","+","0",".","="]
    
    mutating func chooseButton(button: String){
        
        //上次计算的结果清零
        if result.firstIndex(of: "=") != nil || result.firstIndex(of: "!") !=  nil{
            result = "0"
        }
        print(button+"is touch")
        //去重
        if (result.last == "+" || result.last == "-" || result.last == "*" || result.last == "/" || result.last == ".") &&
            (button == "+" || button == "-" || button == "*" || button == "/" || button == "." || button == "%"){
            return
        }
        
        if button == "+" || button == "-" || button == "*" || button == "/"{
            if result != "0"{
                result += button
            }
            return
        }
        
        if button == "%"{
            result = result + "/100"
            return
        }
        
        if button == "+/-"{
            if result != "0"{
                if result.first != "-"{
                    result = "-" + result
                }
                else if result.first == "-"{
                    result.removeFirst()
                }
            }
            return
        }
        
        if button == "AC"{
            result = "0"
            return
        }
        
        if button == "="{
            result = Calculate()
            return
        }
        
        if result ==  "0"{
            result = button
            if button == "."{
                result = "0" + result
            }
        }
        else{
            result += button
        }
    }
    
    func Calculate() -> String{
        if result == "0"{
            return "0"
        }
        if result.last == "+" || result.last == "-" || result.last == "*" || result.last == "/" || result.last == "."{
            return "表达式有误,请重新输入 !"
        }
        
        var s: String = result
        if result.firstIndex(of: ".") == nil{
            s += ".0"
        }
        
        let ns = NSExpression(format: s)
        if let value = ns.expressionValue(with: nil, context: nil){
            print(value)
            return result + " = " + "\(value)"
        }
        return "表达式有误,请重新输入 !"
    }
}
