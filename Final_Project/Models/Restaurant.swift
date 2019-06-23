//
//  Restaurant.swift
//  Final_Project
//
//  Created by Diego Garcia on 6/22/19.
//  Copyright © 2019 Diego Garcia. All rights reserved.
//

import Foundation

struct Restaurant {
    
    var name: String
    var email: String
    var tagline: String
    var webInURL: String
    var imageName: String
    var location: String
    
    static func all() -> [Restaurant] {
        
        return [
            Restaurant(name: "Pana Movil", email: "panamovil@gmail.com", tagline: "FoodTruck", webInURL: "https://instagram.com/panamoviluy", imageName: "panamovil", location: "0.3"),
             Restaurant(name: "Poidepu", email: "poidepu@gmail.com", tagline: "Comida Venezolana", webInURL: "https://instagram.com/poidepuui", imageName: "poipedu", location: "1.2"),
            Restaurant(name: "zona058", email: "zona058@gmail.com", tagline: "Comida Venezolana", webInURL: "https://instagram.com/zona_058", imageName: "zona058", location: "2.3"),
        ]
    }
    
}
