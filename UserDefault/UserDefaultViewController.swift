//
//  ViewController.swift
//  UserDefault
//
//  Created by MacStudent on 2020-03-04.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import UIKit

class UserDefaultViewController: UIViewController {

    @IBOutlet weak var switchOnOff: UISwitch!
    @IBOutlet weak var lblfromUser: UILabel!
    @IBOutlet weak var txtFromUser: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        txtFromUser.text = ""
        lblfromUser.text = ""
    }

    @IBAction func btnSave(_ sender: UIButton) {
        
        
        if switchOnOff .isOn
        {
        UserDefaults.standard.set(txtFromUser.text, forKey: "name")
        UserDefaults.standard.set(txtPassword.text, forKey: "password")
        }
        else
        {
            UserDefaults.standard.removeObject(forKey: "name")
            UserDefaults.standard.removeObject(forKey: "password")
        }
    }
    
    @IBAction func btnFetch(_ sender: UIButton) {
        
        let ud = UserDefaults.standard
        let name = ud.string(forKey: "name")
        let password = ud.string(forKey: "password")
        
        lblfromUser.text = name
        
        
    }
}

