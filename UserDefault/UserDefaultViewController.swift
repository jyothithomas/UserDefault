//
//  ViewController.swift
//  UserDefault
//
//  Created by MacStudent on 2020-03-04.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import UIKit

class UserDefaultViewController: UIViewController {

    @IBOutlet weak var lblfromUser: UILabel!
    @IBOutlet weak var txtFromUser: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnSave(_ sender: UIButton) {
        
        UserDefaults.standard.set(txtFromUser.text, forKey: "name")
    }
    
    @IBAction func btnFetch(_ sender: UIButton) {
        
        let ud = UserDefaults.standard
        let name = ud.string(forKey: "name")
        
        lblfromUser.text = name
    }
}

