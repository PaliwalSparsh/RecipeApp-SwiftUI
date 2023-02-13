//
//  RecipeDetailView.swift
//  Recipe
//
//  Created by Sparsh Paliwal on 2/12/23.
//

import SwiftUI

struct RecipeDetailView: View {
    let recipe: Recipe
    var body: some View {
        ScrollView {
            
            //MARK: Image
            Image(recipe.image)
                .resizable()
                .scaledToFill()
            
            VStack(alignment: .leading) {
                //MARK: Ingredients
                Text("Ingredients").font(.headline).padding([.top, .bottom], 2)
                ForEach(recipe.ingredients, id: \.self) {
                    ingredient in
                    Text("- " + ingredient)
                }
                
                Divider()
                
                //MARK: Directions
                Text("Directions").font(.headline).padding(.bottom, 2)
                ForEach(0...(recipe.directions.count-1), id: \.self) {
                    index in
                    Text("\(String(index+1)). \(recipe.directions[index])")
                        .padding(.bottom, 0.5)
                }
            }.padding(.horizontal, 16)
        }.navigationBarTitle(recipe.name)
        
    }
}

struct RecipeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        let recipe = RecipeModel().recipes[0]
        RecipeDetailView(recipe: recipe)
    }
}
