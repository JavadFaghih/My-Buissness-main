//
//  ContactUSVC.swift
//  My Buissness
//
//  Created by javad faghih on 7/16/1399 AP.
//

import UIKit
import MapKit
class ContactUSVC: UIViewController {

    
    @IBOutlet weak var mapView: MKMapView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        mapView.layer.cornerRadius = self.view.frame.height / 12
        
        mapView.layer.borderWidth = 3
        mapView.layer.borderColor = UIColor.white.cgColor
        view.backgroundColor = UIColor(patternImage: UIImage(named: "BackgroundImage")!)
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        setUpMapView()
       
    }
    
    
    func setUpMapView() {
     
        let myBuissnesslocation = CLLocationCoordinate2D(latitude: 28.903153, longitude: 50.837419)
        
        mapView.setCenter(myBuissnesslocation, animated: true)
        
        let annotattion = MKPointAnnotation()
        annotattion.title = "My buissness"
        annotattion.subtitle = "you can find us here"
        annotattion.coordinate = myBuissnesslocation
       
        mapView.addAnnotation(annotattion)
        
        let region = MKCoordinateRegion(center: myBuissnesslocation, latitudinalMeters: CLLocationDistance(exactly: 500)!, longitudinalMeters: CLLocationDistance(exactly: 500)!)
       
        mapView.setRegion(region, animated: true)
        
        
    }
    
    @IBAction func directionBtnTapped(_ sender: UIButtonExt) {
        
        UIApplication.shared.openURL(URL(string: "http://maps.apple.com/maps?daddr=28.903153,50.837419")!)
    }
    @IBAction func callUSBtnWasTapped(_ sender: UIButtonExt) {
        
        let alert = UIAlertController(title: "Call", message: "are you sure you want call us??", preferredStyle: .alert)
        let cancel = UIAlertAction(title: "cancel", style: .cancel, handler: nil)
        let ok = UIAlertAction(title: "Ok", style: .default) { (action) in
            
            let url: URL = URL(string: "tel://00989391484145")!
            UIApplication.shared.openURL(url)
        }
        alert.addAction(cancel)
        alert.addAction(ok)
        present(alert, animated: true, completion: nil)
    }
    
    @IBAction func emailUSWasTapped(_ sender: Any) {
    }
    
    @IBAction func socialLinksWasTapped(_ sender: UIButtonExt) {
        guard  let socialVC = storyboard?.instantiateViewController(identifier: "sociallinksVC") as? SociallinksVC else { return}
        
        navigationController?.pushViewController(socialVC, animated: true)
        
    }
    
}
