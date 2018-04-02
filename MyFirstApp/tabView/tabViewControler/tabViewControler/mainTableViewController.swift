//
//  mainTableViewController.swift
//  tabViewControler
//
//  Created by Rick LIN on 2018/3/28.
//  Copyright © 2018年 Rick LIN. All rights reserved.
//

import UIKit

class mainTableViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "footTableViewCell") as! UITableViewCell
        return cell
        
    }
}
