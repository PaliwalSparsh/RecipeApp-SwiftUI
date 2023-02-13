//
//  RecipeTabView.swift
//  Recipe
//
//  Created by Sparsh Paliwal on 2/13/23.
//

import SwiftUI

struct RecipeTabView: View {
    var body: some View {
        TabView {
            Text("Featured Recipes")
                .tabItem{
                    VStack {
                        Image(systemName: "star.fill")
                        Text("Featured")
                    }
                }

            RecipeListView()
                .tabItem{
                    VStack {
                        Image(systemName: "list.bullet")
                        Text("List")
                    }
                }
        }
    }
}

struct RecipeTabView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeTabView()
    }
}
