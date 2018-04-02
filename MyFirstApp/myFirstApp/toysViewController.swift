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
        
        myImage.backgroundColor = UIColor(red: CGFloat(redColorSliderValue.value), green: CGFloat(greenColorSliderValue.value), blue: CGFloat(blueColorSliderValue.value), alpha: 1)
        
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
        
        
        redColorSliderValue.value = rr
        greenColorSliderValue.value = gg
        blueColorSliderValue.value = bb
        colorValueText()
    }
    
    @IBOutlet weak var myImage: UIImageView!
    @IBOutlet weak var redColorSliderValue: UISlider!
    @IBOutlet weak var greenColorSliderValue: UISlider!
    @IBOutlet weak var blueColorSliderValue: UISlider!
    @IBOutlet weak var redVal: UILabel!
    @IBOutlet weak var greenVal: UILabel!
    @IBOutlet weak var blueVal: UILabel!
    @IBAction func resSlider(_ sender: UISlider) {
       
        myImage.backgroundColor = UIColor(red: CGFloat(redColorSliderValue.value), green: CGFloat(greenColorSliderValue.value), blue: CGFloat(blueColorSliderValue.value), alpha: 1)
        
        
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
        
        greenVal.text = String(format: "%.0f",greenColorSliderValue.value*255)+"/255"
        redVal.text = String(format: "%.0f",redColorSliderValue.value*255)+"/255"
        blueVal.text = String(format: "%.0f",blueColorSliderValue.value*255)+"/255"
        
    }
}
extension UIColor {
    convenience init(r: CGFloat, g: CGFloat, b: CGFloat) {
        self.init(red: r/255, green: g/255, blue: b/255, alpha: 1)
    }
}

