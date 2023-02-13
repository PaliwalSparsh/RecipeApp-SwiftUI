//
//  Optionals.swift
//  Recipe
//
//  Created by Sparsh Paliwal on 2/9/23.
//

import SwiftUI

struct Optionals: View {
    @State var names:[String]?
    
    
    var body: some View {
        VStack {
            Button("One"){
                names = nil
            }
            Button("Two"){
                names = ["a", "b", "c"]
            }
            if names == nil {
                Text("Press on button named Two")
            } else {
                VStack {
                    List(names!, id: \.self) { name in
                        Text(name)
                    }
                }
            }
        }
    }
}

struct Optionals_Previews: PreviewProvider {
    static var previews: some View {
        Optionals()
    }
}
