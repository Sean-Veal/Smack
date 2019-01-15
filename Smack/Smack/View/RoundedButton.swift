//
//  RoundedButton.swift
//  Smack
//
//  Created by Sean Veal on 1/15/19.
//  Copyright © 2019 Sean Veal. All rights reserved.
//

import UIKit

@IBDesignable
class RoundedButton: UIButton {

    @IBInspectable var cornerRadiua: CGFloat = 3.0 {
        didSet {
            self.layer.cornerRadius = cornerRadiua
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.setupView()
    }
    
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        self.setupView()
    }
    
    func setupView() {
        self.layer.cornerRadius = cornerRadiua
    }
   

}
