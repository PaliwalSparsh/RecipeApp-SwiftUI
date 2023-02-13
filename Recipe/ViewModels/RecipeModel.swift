//
//  RecipeModel.swift
//  Recipe
//
//  Created by Sparsh Paliwal on 2/8/23.
//

import Foundation

class RecipeModel: ObservableObject {
    @Published var recipes = [Recipe]()

    init() {
        self.recipes = DataService.getLocalData()
    }
}
