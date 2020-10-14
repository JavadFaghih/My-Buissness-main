//
//  RoundTextView.swift
//  My Buissness
//
//  Created by javad faghih on 7/19/1399 AP.
//

import UIKit
@IBDesignable


class RoundTextView: UITextView {

   
   override func prepareForInterfaceBuilder() {
        layer.cornerRadius = roundedNumber
    }
    
    
    @IBInspectable var roundedNumber: CGFloat = 0 {
        
        didSet {
            self.layer.cornerRadius = roundedNumber
        }
        
    }
    
    override func awakeFromNib() {
        layer.cornerRadius = roundedNumber
    }
    
    

}
