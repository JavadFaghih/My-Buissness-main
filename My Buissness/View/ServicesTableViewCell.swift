//
//  TableViewCell.swift
//  My Buissness
//
//  Created by javad faghih on 7/11/1399 AP.
//

import UIKit
import CoreData

class ServicesTableViewCell: UITableViewCell {
    

    
    @IBOutlet weak var serviceImage: UiImageViewExt!
    @IBOutlet weak var serviceLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.backgroundColor = UIColor(patternImage: UIImage(named: "BackgroundImage")!)

    }
    
    func configoreCell(service: ServicesModel) {
        serviceImage.image = UIImage(named: service.serviceImage)
        serviceLbl.text = service.serviceName
        
    }
    
    

}
