//
//  OurServiceVC.swift
//  My Buissness
//
//  Created by javad faghih on 7/11/1399 AP.
//

import UIKit

let service: [ServicesModel] = [ServicesModel(serviceName: "My Service 1", serviceImage: "PortImage1"),
                                ServicesModel(serviceName: "My Service 2", serviceImage: "PortImage2"),
                                ServicesModel(serviceName: "My Service 3", serviceImage: "PortImage3"),
                                ServicesModel(serviceName: "My Service 4", serviceImage: "PortImage4"),
                                ServicesModel(serviceName: "My Service 5", serviceImage: "PortImage5"),
                                ServicesModel(serviceName: "My Service 6", serviceImage: "PortImage6"),
                                ServicesModel(serviceName: "My Service 7", serviceImage: "PortImage7"),
                                ServicesModel(serviceName: "My Service 8", serviceImage: "PortImage1")]

class ServicesTableView: UIViewController, UITableViewDelegate, UITableViewDataSource {
   
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return service.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ourServiceCell", for: indexPath) as? ServicesTableViewCell else { return UITableViewCell()}
            cell.configoreCell(service: service[indexPath.row])
        
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        performSegue(withIdentifier: "detailsServices", sender: indexPath)
        

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "detailsServices" {
            
            let destinationVC = segue.destination as? detailsVC
            let customIndexPath = self.tableView.indexPathForSelectedRow
            destinationVC?.initData(image: service[customIndexPath!.row].serviceImage, service: service[customIndexPath!.row].serviceName, description: "Hello World")
            
        }
    }
    
    
    
    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if UIDevice.current.userInterfaceIdiom == .pad {
            tableView.rowHeight = 200.0
        }
        else {
            tableView.rowHeight = 110.0
            
        }
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.backgroundColor = UIColor(patternImage: UIImage(named: "BackgroundImage")!)
        
    }
    


}
