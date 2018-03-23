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
    @IBOutlet weak var urSex: UISegmentedControl!
    @IBOutlet weak var urHabit: UISegmentedControl!
    @IBOutlet weak var urBirthday: UIDatePicker!
    @IBOutlet weak var showYes: UIImageView!
    @IBOutlet weak var showNo: UIImageView!
    
    @IBAction func submit(_ sender: UIButton) {
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
