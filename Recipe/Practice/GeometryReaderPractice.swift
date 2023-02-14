//
//  GeometryReaderPractice.swift
//  Recipe
//
//  Created by Sparsh Paliwal on 2/14/23.
//

import SwiftUI

struct GeometryReaderPractice: View {
    var body: some View {
        VStack {
            GeometryReader { geo in
                Rectangle().foregroundColor(.green).frame(height: geo.size.height)                   .onTapGesture {
                    print("global X: \(geo.frame(in: .global).minX)")
                    print("global Y: \(geo.frame(in: .global).minY)")
                    print("local X: \(geo.frame(in: .local).minX)")
                    print("local Y: \(geo.frame(in: .local).minY)")
                }
                Rectangle().foregroundColor(.red).frame(width: geo.size.width * 2/3, height: geo.size.height/4)
                    .position(x: geo.size.width/2, y: geo.size.height/2)
                    .onTapGesture {
                        print("global X: \(geo.frame(in: .global).minX)")
                        print("global Y: \(geo.frame(in: .global).minY)")
                        print("local X: \(geo.frame(in: .local).minX)")
                        print("local Y: \(geo.frame(in: .local).minY)")
                    }
                
            }.ignoresSafeArea()
            GeometryReader { geo in
                Rectangle().foregroundColor(.purple).frame(width: geo.size.width/2)                   .onTapGesture {
                    print("global X: \(geo.frame(in: .global).minX)")
                    print("global Y: \(geo.frame(in: .global).minY)")
                    print("local X: \(geo.frame(in: .local).minX)")
                    print("local Y: \(geo.frame(in: .local).minY)")
                }
                Rectangle().foregroundColor(.orange).frame(width: geo.size.width/2).offset(x: geo.size.width/2,y:0)                   .onTapGesture {
                    print("global X: \(geo.frame(in: .global).minX)")
                    print("global Y: \(geo.frame(in: .global).minY)")
                    print("local X: \(geo.frame(in: .local).minX)")
                    print("local Y: \(geo.frame(in: .local).minY)")
                }
            }.ignoresSafeArea()
        }
        
    }
}

struct GeometryReaderPractice_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReaderPractice()
    }
}
