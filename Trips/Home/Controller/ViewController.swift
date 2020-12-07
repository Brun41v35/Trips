//
//  ViewController.swift
//  Trips
//
//  Created by Bruno Silva on 07/12/20.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    //MARK: - IBOutlets
    @IBOutlet weak var tableTrips: UITableView!
    @IBOutlet weak var viewHoteis: UIView!
    @IBOutlet weak var viewPackage: UIView!
    
    //MARK: - Variaveis
    var listCity: Array<Viagem> = ViagemDAO().returnAllTrips()
    
    //MARK: - Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableTrips.dataSource = self
        self.tableTrips.delegate = self
        self.viewHoteis.layer.cornerRadius = 10
        self.viewPackage.layer.cornerRadius = 10
    }
    
    //MARK: - Table View Methods
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listCity.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        let currentTrip = listCity[indexPath.row]
        
        cell.labelName.text = currentTrip.nameTrip
        cell.labelDays.text = "\(currentTrip.days)"
        cell.labelPrice.text = "R$ \(currentTrip.price)"
        cell.imageTrip.image = UIImage(named: currentTrip.journeyPath)
        cell.imageTrip.layer.cornerRadius = 10
        cell.imageTrip.layer.masksToBounds = true
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UIDevice.current.userInterfaceIdiom == UIUserInterfaceIdiom.phone ? 175 : 260
    }
}

