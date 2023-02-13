//
//  Recipe.swift
//  Recipe
//
//  Created by Sparsh Paliwal on 2/8/23.
//

import Foundation

// To iterate through this model while it has unique id property, we want this to conform to Identifiable protocol

// To use this with JSON Decoder we want this to conform to Decodable protocol

class Recipe: Identifiable, Decodable {
    var id:UUID?
    var name:String
    var featured:Bool
    var image:String
    var description:String
    var prepTime:String
    var cookTime:String
    var totalTime:String
    var servings:Int
    var ingredients:[String]
    var directions:[String]
}
