//
//  ChatVC.swift
//  Smack
//
//  Created by Sean Veal on 1/14/19.
//  Copyright © 2019 Sean Veal. All rights reserved.
//

import UIKit

class ChatVC: UIViewController {

    //Outlets
    @IBOutlet weak var menuBtn: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        menuBtn.addTarget(self.revealViewController(), action: #selector(SWRevealViewController.revealToggle(_:)), for: .touchUpInside)
        
        guard let panGesture = self.revealViewController()?.panGestureRecognizer() else {fatalError("Gesture!!")}
        guard let tapGesture = self.revealViewController()?.tapGestureRecognizer() else {fatalError("Gesture!!")}
        
        self.view.addGestureRecognizer(panGesture)
        self.view.addGestureRecognizer(tapGesture)
        
        if AuthService.instance.isLoggedIn {
            AuthService.instance.findUserByEmail(email: UserDataService.instance.email) { (success) in
                NotificationCenter.default.post(name: NOTIF_USER_DATA_DID_CHANGE, object: nil)
            }
        }

    }
    

   

}
