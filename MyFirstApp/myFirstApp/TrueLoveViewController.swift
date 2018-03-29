//
//  TruleViewController.swift
//  myFirstApp
//
//  Created by Rick LIN on 2018/3/22.
//  Copyright © 2018年 Rick LIN. All rights reserved.
//

import UIKit

class TruleViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
   
    @IBOutlet weak var starTextField: UITextField!
    
    
    
    @IBAction func gender(_ sender: UISegmentedControl) {
        let genderType = sender.titleForSegment(at: sender.selectedSegmentIndex)
        starTextField.text = genderType

        if(genderType != "men"){
            yesImage.isHidden = false
            noImage.isHidden = true
        } else{
            yesImage.isHidden = true
            noImage.isHidden = false
        }
    }
    
    @IBOutlet weak var answer: UIImageView!
    
    @IBOutlet weak var star: UISegmentedControl!
    
    @IBOutlet weak var yesImage: UIImageView!
    @IBOutlet weak var noImage: UIImageView!
    
    
    @IBAction func submit(_ sender: UIButton) {
        let labText = starTextField.text!
        print(labText)
        starTextField.text = labText + "OK"
        
        let answerImage: String!
        if(star.titleForSegment(at: star.selectedSegmentIndex)=="men"){
            yesImage.isHidden = false
            noImage.isHidden = true
            answerImage = "answer1"
        } else{
            yesImage.isHidden = true
            noImage.isHidden = false
            answerImage = "answe2"
        }
        answer.image = UIImage(named: answerImage!)
    }
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
