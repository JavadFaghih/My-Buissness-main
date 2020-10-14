//
//  PortfolioVC.swift
//  My Buissness
//
//  Created by javad faghih on 7/11/1399 AP.
//

import UIKit

class PortfolioVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    

    
    @IBOutlet weak var collectionView: UICollectionView!
    
    
    var portfolioArray: [PortfolioModel] = [PortfolioModel(image: "PortImage1", desc: "it's the most intrsting work we've ever had "),
                                            PortfolioModel(image: "PortImage2", desc: "you should trust use and choose thios"),
                                            PortfolioModel(image: "PortImage3", desc: "we never say lie to everone"),
                                            PortfolioModel(image: "PortImage4", desc: "buy this fast and with no question"),
                                            PortfolioModel(image: "PortImage5", desc: "do you like it, so buy it!!!"),
                                            PortfolioModel(image: "PortImage6", desc: "come here!"),
                                            PortfolioModel(image: "PortImage7", desc: "hahahahahahahahaha"),
                                            PortfolioModel(image: "PortImage1", desc: "please see mee and buy me"),
                                            PortfolioModel(image: "PortImage2", desc: "lalalalalalalala land"),
                                            PortfolioModel(image: "PortImage3", desc: "namak nazriz ro zakhmam"),
                                            PortfolioModel(image: "PortImage4", desc: "bip bip i'm here......"),
                                            PortfolioModel(image: "PortImage5", desc: "you'll never find any one beter than me"),
                                            PortfolioModel(image: "PortImage6", desc: "our portfolio show our personality...."),
                                            PortfolioModel(image: "PortImage7", desc: "our goal is to put a cap over our clients heads"),
                                            PortfolioModel(image: "PortImage1", desc: "nice to met you sir"),
                                            PortfolioModel(image: "PortImage2", desc: "lalalalalalala "),
                                            PortfolioModel(image: "PortImage3", desc: "im a developer"),
                                            PortfolioModel(image: "PortImage4", desc: "I'll kill you if you dont buy me"),
                                            PortfolioModel(image: "PortImage5", desc: "I swear I'll Kill you"),
                                            PortfolioModel(image: "PortImage6", desc: "you are the most amazing person I've ever seen")]
    
    
    var name: String? {
        get {
            UserDefaults.standard.string(forKey: "name")
        }
        set {
            UserDefaults.standard.set(newValue, forKey: "name")
            UserDefaults.standard.synchronize()
        }
        
        
    }
    
    var descript: String? {
        get {
            UserDefaults.standard.string(forKey: "descript")
        } set {
            UserDefaults.standard.set(newValue, forKey: "descript")
        }
    }
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        collectionView.delegate = self
        collectionView.dataSource = self
        view.backgroundColor = UIColor(patternImage: UIImage(named: "BackgroundImage")!)

    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return portfolioArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "portCell", for: indexPath) as? PortfolioCell else { return UICollectionViewCell()}
        
        cell.configoreCell(portfolio: portfolioArray[indexPath.row])
        
        
        return cell
    }
    
   
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
      
        name = portfolioArray[indexPath.row].image
        descript = portfolioArray[indexPath.row].desc
        
        performSegue(withIdentifier: "portdetails", sender: indexPath)
        
    }
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize
//        {
//        if UIDevice.current.userInterfaceIdiom == .pad {
//            return CGSize(width: 1000.0, height: 1000.0)
//
//        } else {
//            return CGSize(width: 50.0, height: 50.0)
//        }
//        
//        }
    
    
}
