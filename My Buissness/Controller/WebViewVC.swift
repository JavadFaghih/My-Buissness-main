//
//  WebViewVC.swift
//  My Buissness
//
//  Created by javad faghih on 7/19/1399 AP.
//

import UIKit

class WebViewVC: UIViewController, UIWebViewDelegate {

    @IBOutlet weak var webView: UIWebView!
    @IBOutlet weak var indicatore: UIActivityIndicatorView!
    
    
    var initData: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.title = initData
        
        if initData == "FACEBOOK" {
            let url = URL(string: "https://www.facebook.com")
            let request = URLRequest(url: url!)
            webView.loadRequest(request)
            
        }
       else if  initData == "GOOGLE PLUSE" {
            let url = URL(string: "https://www.google.com")
            let requset = URLRequest(url: url!)
            webView.loadRequest(requset)
       }
       else if  initData == "YOUTUBE" {
       let url = URL(string: "https://www.youtube.com")
        let request = URLRequest(url: url!)
        webView.loadRequest(request)
       }
       else if initData == "MYWEBSITE" {
        let url = URL(string: "https://www.varzesh3.com")
        let requst = URLRequest(url: url!)
        webView.loadRequest(requst)
        
       }
       else if initData == "TWITTER" {
        let url = URL(string: "https://www.twitter.com")
        let request = URLRequest(url: url!)
        webView.loadRequest(request)
       } else {
        let url = URL(string: "https://www.linkedin.com")
        let request = URLRequest(url: url!)
        webView.loadRequest(request)
        
       }
   
        
        
       
        
    }
    func webViewDidStartLoad(_ webView: UIWebView) {
        indicatore.startAnimating()
        
        
    }
    func webViewDidFinishLoad(_ webView: UIWebView) {
        indicatore.stopAnimating()
    }
   

}
