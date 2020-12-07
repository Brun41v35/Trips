//
//  Viagem.swift
//  Trips
//
//  Created by Bruno Silva on 07/12/20.
//

import UIKit

class Viagem: NSObject {
    
    //MARK: - Atributos
    let nameTrip: String
    let days: Int
    let price: String
    let journeyPath: String
    
    //MARK: - Constructor
    init(nameTrip: String, days: Int, price: String, journeyPath: String) {
        self.nameTrip = nameTrip
        self.days = days
        self.price = price
        self.journeyPath = journeyPath
    }
}
