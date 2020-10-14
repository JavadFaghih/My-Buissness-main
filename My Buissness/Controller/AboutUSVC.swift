//
//  AboutUSVC.swift
//  My Buissness
//
//  Created by javad faghih on 7/15/1399 AP.
//

import UIKit

class AboutUSVC: UIViewController {

    
   
    @IBOutlet weak var textView: UITextView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        view.backgroundColor = UIColor(patternImage: UIImage(named: "BackgroundImage")!)
      
        textView.textAlignment = .left

       textView.translatesAutoresizingMaskIntoConstraints = true
//        textView.sizeToFit()
        textView.isScrollEnabled = true
        textView.textAlignment = .center
    
    }
    
    override func viewWillLayoutSubviews() {

     
//        let contentRect: CGRect = scroll.subviews.reduce(into: .zero) { rect, view in
//            rect = rect.union(view.frame)
//        }
        
    
        
    }

    
    @IBAction func socialBtnTapped(_ sender: UIButtonExt) {
        
        let socialVC = storyboard?.instantiateViewController(identifier: "sociallinksVC")
        
        navigationController?.pushViewController(socialVC!, animated: true)
        
    }
    
    @IBAction func contactUsbtntapped(_ sender: UIButtonExt) {
        UIView.animate(withDuration: 0.05) {
            self.tabBarController?.selectedIndex = 4

        }
        
        
        
        
    }
    
    
}
