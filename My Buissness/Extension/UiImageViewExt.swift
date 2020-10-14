//
//  UiImageViewExt.swift
//  My Buissness
//
//  Created by javad faghih on 7/11/1399 AP.
//

import UIKit

class UiImageViewExt: UIImageView {

    override func awakeFromNib() {
       
        self.layer.cornerRadius = self.frame.height / 2
        self.layer.masksToBounds = false
        self.clipsToBounds = true
        self.layer.borderWidth = 3.0
        self.layer.borderColor = #colorLiteral(red: 0.9999960065, green: 1, blue: 1, alpha: 1)
    }

}
