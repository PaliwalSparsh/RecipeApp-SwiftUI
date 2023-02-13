//
//  PizzaModel.swift
//  Recipe
//
//  Created by Sparsh Paliwal on 2/9/23.
//

import Foundation

class PizzaModel: ObservableObject {
    @Published var pizzas = [Pizza(name: "joe", topping1: "pineapple", topping2: "ham", topping3: "gajar"), Pizza(name: "Shaun", topping1: "potato", topping2: "roe", topping3: "wade"), Pizza(name: "Sagar", topping1: "rajma", topping2: "chicken", topping3: "paneer")]
    
    // This is really important lesson here, if we didn't completely reassign pizzas here, the view would not have re-rendered, because we would have been jut changing a property inside the objects which are elements in the array. So, essentially the array has not changed. Also, the elements in it are not changed because class objects are reference types and only properties inside them have changed. However, if these were structs and we changed property inside them, the whole struct would have been thrown away by swift compiler and this would have been seen as a change in array, thus triggering re-render
    func changeTopping1ToPineapple() {
        var tempPizza = [Pizza]()
        for index in 0...(self.pizzas.count-1) {
            let pizza = self.pizzas[index]
            pizza.topping1 = "pineapple"
            tempPizza.append(pizza)
        }
        self.pizzas = tempPizza
    }
}
