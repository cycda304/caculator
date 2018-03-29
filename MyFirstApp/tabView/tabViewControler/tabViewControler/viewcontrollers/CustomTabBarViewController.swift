//
//  CustomTabBarViewController.swift
//  tabViewControler
//
//  Created by Rick LIN on 2018/3/27.
//  Copyright © 2018年 Rick LIN. All rights reserved.
//

import UIKit

class CustomTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let firstVC = FirstViewController()
        let secondVC = SecondViewController()
        let thirdVC = ThirdViewController()
        
        firstVC.tabBarItem.title = "Blue"
        secondVC.tabBarItem.title = "Red"
        thirdVC.tabBarItem.title = "Green"
        
        firstVC.tabBarItem.image = UIImage(named:"1")
        secondVC.tabBarItem.image = UIImage(named:"2")
        thirdVC.tabBarItem.image = UIImage(named:"3")
        viewControllers = [firstVC, secondVC, thirdVC ]
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
