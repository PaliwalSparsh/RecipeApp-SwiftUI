//
//  Pizza.swift
//  Recipe
//
//  Created by Sparsh Paliwal on 2/9/23.
//

import Foundation

class Pizza:Identifiable {
    var id = UUID()
    var name:String = ""
    var topping1:String = ""
    var topping2:String = ""
    var topping3:String = ""
    
    init(name:String, topping1:String, topping2:String, topping3: String) {
        self.name = name
        self.topping1 = topping1
        self.topping2 = topping2
        self.topping3 = topping3
    }
}
