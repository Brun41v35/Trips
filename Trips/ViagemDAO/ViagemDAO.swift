//
//  ViagemDAO.swift
//  Trips
//
//  Created by Bruno Silva on 07/12/20.
//

import UIKit

class ViagemDAO: NSObject {
    
    func returnAllTrips() -> Array<Viagem> {
        let ceara = Viagem(nameTrip: "Ceará", days: 3, price: "1.500,00", journeyPath: "img1.png")
        let rioDeJaneiro = Viagem(nameTrip: "Rio de Janeiro", days: 6, price: "1.200,00", journeyPath: "img2.png")
        let interiorSaoPaulo = Viagem(nameTrip: "Atibaia - São Paulo", days: 5, price: "2.300,00", journeyPath: "img3.png")
        let paraiba = Viagem(nameTrip: "Paraiba", days: 4, price: "1.250,00", journeyPath: "img4.png")
        let fortaleza = Viagem(nameTrip: "Fortaleza", days: 10, price: "950,00", journeyPath: "img5.png")
        let listTrip: Array<Viagem> = [ceara, rioDeJaneiro, interiorSaoPaulo, paraiba, fortaleza]
        
        return listTrip
    }
}
