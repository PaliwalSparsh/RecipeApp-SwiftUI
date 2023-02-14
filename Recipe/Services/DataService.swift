//
//  DataService.swift
//  Recipe
//
//  Created by Sparsh Paliwal on 2/9/23.
//

import Foundation

class DataService {
    static func getLocalData() -> [Recipe] {
        // Once app is bundled there are no paths as we see in the file explorer, so we need to first get file path to json file from the app bundle that will be create once build happens
        let pathString = Bundle.main.path(forResource: "recipes", ofType: "json")
        
        // Guard runs the first statement if it runs then all cool, if it fails then it runs else, where we are returning empty recipe, essentially the whole function will exit at this stage giving us just empty [Recipe]().
        guard pathString != nil else {
            return [Recipe]()
        }
        
        // Create a url object, pathString is just an string, URL object helps us to actually get reference to the file
        // guard has ensured that flow will not reach here if pathString is nil
        let url = URL(fileURLWithPath: pathString!)
        
        // Error handling
        do {
            // Put the code that potentially throws error, in function definition(of Xcode autocomplete) you will see there is a throw keyword in return statement, if it exists we need to put the whole thing in do catch
            
            // Create a data object using the data at the url, we have to put try where app may throw error
            let data = try Data(contentsOf: url)
            
            // Parse the data
            let decoder = JSONDecoder()
            
            do {
                // This is the place where our Models become useful, here we are telling decoder to decode JSON while ensuring the incoming data is similar to one of the Models that we have, the incoming data is an array of Recipe – [Recipe], to refer to the Model we have to use .self at its end.
                let recipeData = try decoder.decode([Recipe].self, from: data)
                
                // Set unique ID for each recipe in the recipeData array
                for r in recipeData {
                    // set a unique ID for each recipe in the recipeData array
                    
                    // ***Recipe Model was initially a struct, in a for loop when we say r in recipeData, internally while looping it does let r = recipeData[0], and recipe data is passed by value, and if we add r.id = UUID(), it will be changed in the temp r created for this iteration. However, we want to make changes to the actual value so we would need to change our struct to class, so values are passed by reference. Keep in mind while iterating over structs that their value is getting passed and not their reference.
                    r.id = UUID()
                    
                    // Add id to ingredients
                    for i in r.ingredients {
                        i.id = UUID()
                    }
                }
                
                // Assign data to published property
                return recipeData
            }
        } catch {
            // Automatic error paramter exists in catch
            print(error)
            return [Recipe]()
        }
    }
}

