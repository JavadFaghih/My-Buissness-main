//
//  PortfolioDetailsVC.swift
//  My Buissness
//
//  Created by javad faghih on 7/11/1399 AP.
//

import UIKit
import Social


class PortfolioDetailsVC: UIViewController {
    
    
    @IBOutlet weak var imageView: UiImageViewExt!
    @IBOutlet weak var label: UITextView!
    
    var name: String? {
        get {
          return  UserDefaults.standard.string(forKey: "name")
        }
    }
    
    
    var desc: String? {
        get {
            return UserDefaults.standard.string(forKey: "descript")
        }
        
    }
    

    
    override func viewDidLoad() {
        super.viewDidLoad()

        label.text = desc
        imageView.image = UIImage(named: name!)
        
        view.backgroundColor = UIColor(patternImage: UIImage(named: "BackgroundImage")!)
        
        label.translatesAutoresizingMaskIntoConstraints = true
        label.sizeToFit()
        label.isScrollEnabled = false
        label.textAlignment = .center
        
    }
    
    @IBAction func faceBookBtnTapped(_ sender: UIButtonExt) {
        if SLComposeViewController.isAvailable(forServiceType: SLServiceTypeFacebook) {
            
            let facebookShet: SLComposeViewController = SLComposeViewController(forServiceType: SLServiceTypeFacebook)
            facebookShet.setInitialText("check out \(String(describing: label.text))")
            facebookShet.add(imageView.image)
            
            present(facebookShet, animated: true, completion: nil)
            
        }
        else {
            alert(social: "FaceBook")
        }
        
    }
    
    @IBAction func twitterBtnTapped(_ sender: UIButtonExt) {
        
        if SLComposeViewController.isAvailable(forServiceType: SLServiceTypeTwitter) {
            
            let twitterSheet: SLComposeViewController = SLComposeViewController(forServiceType: SLServiceTypeTwitter)
            twitterSheet.setInitialText("check out \(String(describing: label.text))")
            twitterSheet.add(imageView.image)
            
            present(twitterSheet, animated: true, completion: nil)
            
        }
        else {
            alert(social: "Twitter")
        }
        
    }
        
        
    
    
    func alert (social: String) {
        let alert = UIAlertController(title: "Warning", message: "please sign in \(social) first", preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .cancel, handler: nil)
        alert.addAction(action)
        self.present(alert, animated: true, completion: nil)
    }
    
    
}
    
