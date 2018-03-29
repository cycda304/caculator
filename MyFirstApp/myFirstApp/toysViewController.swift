//
//  toysViewController.swift
//  uicolor
//
//  Created by Rick LIN on 2018/3/26.
//  Copyright © 2018年 Rick LIN. All rights reserved.
//

import UIKit

class toysViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        colorValueText()
        
        
    }

    
    @IBAction func colorBtnPressed(_ sender: UIButton) {
        
        let btnColor=sender.backgroundColor
        myImage.backgroundColor = btnColor
        
        let greenLevel = sender.backgroundColor?.cgColor.components
        //print("\(greenLevel)")
        
        let rr = Float(greenLevel![0])
        let gg = Float(greenLevel![1])
        let bb = Float(greenLevel![2])
        
        
        redColor.value = rr
        greenColor.value = gg
        blueColor.value = bb
        colorValueText()
    }
    
    @IBOutlet weak var myImage: UIImageView!
    @IBOutlet weak var redColor: UISlider!
    @IBOutlet weak var greenColor: UISlider!
    @IBOutlet weak var blueColor: UISlider!
    @IBOutlet weak var redVal: UILabel!
    @IBOutlet weak var greenVal: UILabel!
    
    @IBOutlet weak var blueVal: UILabel!
    @IBAction func resSlider(_ sender: UISlider) {
       
        myImage.backgroundColor = UIColor(red: CGFloat(redColor.value), green: CGFloat(greenColor.value), blue: CGFloat(blueColor.value), alpha: 1)
        
        
        //myImage.backgroundColor = UIColor(r: 100, g: 50, b: 30)
       
         //print(redColor.value)
        //view.backgroundColor =  UIColor(r: 100, g: 50, b: 30)
        
//        let colorVal = String(format: "%.0f",sender.value*255)+"/255"
//        let currentSliderId=sender.restorationIdentifier!
//        switch currentSliderId{
//        case "idRED":
//            redVal.text = colorVal
//        case "idGREEN":
//            greenVal.text = colorVal
//        case "idBLUE":
//            blueVal.text = colorVal
//
//        default:
//            break
//        }
        colorValueText()
        
        //print(sender.restorationIdentifier)
    }
    
  
    


    func colorValueText (){
        
        greenVal.text = String(format: "%.0f",greenColor.value*255)+"/255"
        redVal.text = String(format: "%.0f",redColor.value*255)+"/255"
        blueVal.text = String(format: "%.0f",blueColor.value*255)+"/255"
        
    }
}
extension UIColor {
    convenience init(r: CGFloat, g: CGFloat, b: CGFloat) {
        self.init(red: r/255, green: g/255, blue: b/255, alpha: 1)
    }
}

