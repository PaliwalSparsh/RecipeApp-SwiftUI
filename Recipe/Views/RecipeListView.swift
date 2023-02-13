//
//  ContentView.swift
//  Recipe
//
//  Created by Sparsh Paliwal on 2/8/23.
//

import SwiftUI

struct RecipeListView: View {
    @ObservedObject var model = RecipeModel()
    
    var body: some View {
        NavigationView() {
            List(model.recipes) { r in
                NavigationLink(destination: RecipeDetailView(recipe: r)) {
                    HStack(alignment: .center) {
                        Image(r.image)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 40,height: 40)
                            .clipped()
                            .cornerRadius(8)
                        Text(r.name)
                    }   
                }
            }.navigationBarTitle("Recipes")
        }
        
    }
}

struct RecipeListView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeListView()
    }
}
