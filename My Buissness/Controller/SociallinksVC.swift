//
//  SociallinksVC.swift
//  My Buissness
//
//  Created by javad faghih on 7/16/1399 AP.
//

import UIKit

class SociallinksVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
  
    var socialArray: [SocialModel] =  [SocialModel(image: "SocialIcon1", label: "FACEBOOK"),
                                       SocialModel(image: "SocialIcon2", label: "TWITTER"),
                                       SocialModel(image: "SocialIcon3", label: "GOOGLE PLUSE"),
                                       SocialModel(image: "SocialIcon4", label: "LINKEDIN"),
                                       SocialModel(image: "SocialIcon5", label: "YOUTUBE"),
                                       SocialModel(image: "SocialIcon6", label: "MYWEBSITE"),
    ]

    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = self
        tableView.dataSource = self
        view.backgroundColor = UIColor(patternImage: UIImage(named: "BackgroundImage")!)
        
      if  UIDevice.current.userInterfaceIdiom == .pad {
        tableView.rowHeight = 175.0
            
        } else {
            tableView.rowHeight = 110.0
            
        }
        
        
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return socialArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "socialCell", for: indexPath) as? SocialCell else { return UITableViewCell()}
        
        cell.configoreCell(social: socialArray[indexPath.row])
        
        return cell
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let backItem = UIBarButtonItem()
           backItem.title = " "
           navigationItem.backBarButtonItem = backItem
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let webViewVC = storyboard?.instantiateViewController(identifier: "WebViewVC") as? WebViewVC else { return}
        webViewVC.initData = socialArray[indexPath.row].label
        
        navigationController?.pushViewController(webViewVC, animated: true)
    }
    
    
    
    

}
