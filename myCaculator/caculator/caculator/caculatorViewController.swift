//
//  caculatorViewController.swift
//  caculator
//
//  Created by Rick LIN on 2018/4/7.
//  Copyright © 2018年 Rick LIN. All rights reserved.
//

import UIKit

class caculatorViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
  
    @IBOutlet weak var display: UILabel!
    var userIsInTyping: Bool = false
    var valueHasTyping: Bool = false
    
    @IBAction func pressedNum(_ sender: UIButton) {
        if let pressedNum = sender.currentTitle {
            if(userIsInTyping){
                display.text = display.text! + pressedNum
            }else{
                display.text = pressedNum
                userIsInTyping = true
            }
            valueHasTyping = true
            //print(pressedNum)
        }
    }
    
    var displayValue: Double{
        get{
            if(display != nil ){
                return Double(display.text!)!
            }else {
                return 0
            }
        }
        set{
            display.text = String(newValue)
        }
    }
    
    struct Operating {
        var resultValue:Double = 0
        var bindingValue:Double = 0
        var bindingOperate:String = ""
        
        mutating func resulet(_ operate:String ,value secondValue:Double)->Double{
            //print("start: bindV:\(bindingValue) , op: \(bindingOperate)")
            if(bindingOperate == ""){
                bindingValue = secondValue
                bindingOperate = operate
                resultValue = secondValue
            }
            else{
                switch bindingOperate{
                case "+":
                    resultValue = bindingValue + secondValue
                case "-":
                    resultValue = bindingValue - secondValue
                case "×":
                    resultValue = bindingValue * secondValue
                case "÷":
                    resultValue = bindingValue / secondValue
                default:
                    break
                }
                
                bindingValue = resultValue
                bindingOperate = operate
            }
            if(operate == "="){
                bindingOperate = ""
            }
            //print("End: bindV:\(bindingValue) , op: \(bindingOperate)")
            return resultValue
        }
        
        mutating func resetBind(){
            bindingValue = 0
            bindingOperate = ""
        }
    }
    var operating=Operating()
    
    @IBAction func operate(_ sender: UIButton) {
        if let operate = sender.currentTitle{
            switch operate{
            case "π":
                displayValue = Double.pi
                userIsInTyping = false
                valueHasTyping = true
            //operating.resetBind()
            case "√":
                displayValue = sqrt(displayValue)
                userIsInTyping = false
                valueHasTyping = false
                operating.resetBind()
            case "±":
                displayValue = -displayValue
                //operating.resetBind()
            case "+","-","×","÷","=":
                if(valueHasTyping){
                    displayValue = operating.resulet(operate, value: displayValue)
                    userIsInTyping = false
                    valueHasTyping = false
                } else{
                    operating.bindingOperate = operate
                }
            case "AC":
                displayValue = 0
                operating.resetBind()
                userIsInTyping = false
                valueHasTyping = false
            default:
                break
            }
        }
    }
    
}
