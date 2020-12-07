//
//  ViewController.swift
//  Trips
//
//  Created by Bruno Silva on 07/12/20.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    //MARK: - IBOutlets
    @IBOutlet weak var tableTrips: UITableView!
    
    //MARK: - Variaveis
    var listCity: Array<String> = ["Rio de Janeiro", "Ceara", "São Paulo"]
    
    //MARK: - Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableTrips.dataSource = self
    }
    
    //MARK: - Table View Methods
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listCity.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = listCity[indexPath.row]
        
        return cell
    }
}

