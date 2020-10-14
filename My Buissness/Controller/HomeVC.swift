//
//  ViewController.swift
//  My Buissness
//
//  Created by javad faghih on 7/10/1399 AP.
//

import UIKit

import CoreData


class HomeVC: UIViewController {

   
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        
        
    }
    @IBAction func serviceBtnWasTapped(_ sender: Any) {
        UIView.animate(withDuration: 0.05) {
            self.tabBarController?.selectedIndex = 1
        }
        
        
    }
    @IBAction func portfolioBtnWasTapped(_ sender: Any) {
        UIView.animate(withDuration: 0.05) {
            self.tabBarController?.selectedIndex = 2
        }
        
    }
    @IBAction func abouUsBtnWasTapped(_ sender: Any) {
        UIView.animate(withDuration: 0.05) {
            self.tabBarController?.selectedIndex = 3
        }
        
    }
    @IBAction func contactUsBtnWasTapped(_ sender: Any) {
        UIView.animate(withDuration: 0.05) {
            self.tabBarController?.selectedIndex = 4
        }
        
    }
    @IBAction func socialLinksbtnWasTapped(_ sender: Any) {
        
        guard let socialVC = storyboard?.instantiateViewController(identifier: "sociallinksVC") as? SociallinksVC else { return }
        
        navigationController?.pushViewController(socialVC, animated: true)
        
    }
    

}

