//
//  SocialCell.swift
//  My Buissness
//
//  Created by javad faghih on 7/16/1399 AP.
//

import UIKit

class SocialCell: UITableViewCell {

    @IBOutlet weak var socialimage: UIImageView!
    @IBOutlet weak var label: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func configoreCell(social: SocialModel) {
        
        socialimage.image = UIImage(named: social.image)
        label.text = social.label
    }
    
    
    

}
