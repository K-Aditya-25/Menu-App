//
//  Menu Item.swift
//  Menu App
//
//  Created by Aditya Kharbanda on 02/07/24.
//

import Foundation

struct MenuItem: Identifiable{
    var id: UUID = UUID()
    var name: String
    var price: Double //String and not Int because we want to display the currency symbol
    var imageName: String
    
    init (name: String, price: Double, imageName: String){
        self.name = name
        self.price = price
        self.imageName = imageName
    }
}
