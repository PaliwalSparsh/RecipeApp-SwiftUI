//
//  RecipeFeaturedView.swift
//  Recipe
//
//  Created by Sparsh Paliwal on 2/14/23.
//

import SwiftUI

struct RecipeFeaturedView: View {
    @EnvironmentObject var model: RecipeModel
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Recipes").font(.largeTitle).bold()
            
            GeometryReader { geo in
                TabView {
                    ForEach(0..<model.recipes.count) { index in
                        if model.recipes[index].featured {
                            ZStack {
                                Rectangle().foregroundColor(.white)
                                
                                VStack(spacing: 0) {
                                    Image(model.recipes[index].image)
                                        .resizable()
                                        .scaledToFill()
                                    Text(model.recipes[index].name)
                                        .padding(.vertical, 10)
                                }
                            }.frame(width: geo.size.width - 40, height: geo.size.height - 100, alignment: .center)
                                .cornerRadius(15)
                                .shadow(color: .black.opacity(0.2), radius: 12, x: 0, y: 0)
                        }
                    }
                    
                }.tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
                    .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
            }
            
            VStack {
                Text("Preparation Time").font(.headline)
                Text("1 hour")
                Text("Highlight").font(.headline)
                Text("Hearty, Healthy")
                
            }
        }
    }
}

struct RecipeFeaturedView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeFeaturedView()
            .environmentObject(RecipeModel())
    }
}
