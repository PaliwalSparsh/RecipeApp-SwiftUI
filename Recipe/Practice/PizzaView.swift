//
//  PizzaView.swift
//  Recipe
//
//  Created by Sparsh Paliwal on 2/9/23.
//

import SwiftUI

struct PizzaView: View {
    @ObservedObject var model = PizzaModel()

    var body: some View {
        VStack {

            ForEach(model.pizzas) { pizza in
                VStack(alignment: .leading) {
                    Text(pizza.name).font(.title)
                    HStack {
                        Text(pizza.topping1 + ", " + pizza.topping2 + ", " +
                             pizza.topping3)
                    }
                }
            }
            
            Spacer()
            
            Button("Add Pineapple") {
                model.changeTopping1ToPineapple()
            }
        }
    }
}

struct PizzaView_Previews: PreviewProvider {
    static var previews: some View {
        PizzaView()
    }
}
