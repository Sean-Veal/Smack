//
//  CreateAccountVC.swift
//  Smack
//
//  Created by Sean Veal on 1/15/19.
//  Copyright © 2019 Sean Veal. All rights reserved.
//

import UIKit

class CreateAccountVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func closePressed(_ sender: UIButton) {
        performSegue(withIdentifier: UNWIND, sender: nil)
    }
}
