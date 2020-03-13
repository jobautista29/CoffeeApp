//
//  Data.swift
//  CoffeeApp
//
//  Created by Jovan on 2/29/20.
//  Copyright © 2020 Jovan. All rights reserved.
//

import SwiftUI

struct Drink: Hashable, Codable, Identifiable {
    var id:Int
    var name: String
    var imageName: String
    var category: Category
    var description: String
    
    enum Category: String, Hashable, Codable, CaseIterable{
        
        case hot = "hot"
        case cold = "cold"
    }
}
