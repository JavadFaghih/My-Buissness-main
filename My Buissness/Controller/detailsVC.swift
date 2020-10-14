//
//  detailsVC.swift
//  My Buissness
//
//  Created by javad faghih on 7/11/1399 AP.
//

import UIKit

class detailsVC: UIViewController {

    
    @IBOutlet weak var imageView: UiImageViewExt!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var descriptionTXTView: UITextView!
    @IBOutlet weak var bigImageView: UIImageView!
    
    @IBOutlet weak var scroller: UIScrollView!
    
    
    var image: String?
    var service: String?
    var descrip: String?
    
    func initData(image: String, service: String, description: String) {
        self.image = image
        self.service = service
        self.descrip = description
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor(patternImage: UIImage(named: "BackgroundImage")!)
        imageView.image =  UIImage(named: image!)
        label.text = service
       bigImageView.image =  UIImage(named: image!)
        bigImageView.layer.cornerRadius = self.bigImageView.frame.size.width / 2.5
        
        
        scroller.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 1000, right: 0)
    }
    
    override func viewWillLayoutSubviews() {
        scroller.frame = self.view.bounds
        scroller.contentSize.height = 1000
        scroller.contentSize.width = 0.0
    }
    
    
}
