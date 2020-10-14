//
//  PortfolioCell.swift
//  My Buissness
//
//  Created by javad faghih on 7/11/1399 AP.
//

import UIKit

class PortfolioCell: UICollectionViewCell {
   
    @IBOutlet weak var imageView: UiImageViewExt!
    
    
    
    func configoreCell(portfolio: PortfolioModel) {
        imageView.image = UIImage(named: portfolio.image)
        
        
        
    }
    
    
}
