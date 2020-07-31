//
//  RecipeBlock.swift
//  cooky
//
//  Created by Dr.Fat on 2020/8/1.
//  Copyright © 2020 aaron-xin. All rights reserved.
//

import SwiftUI

let width = UIScreen.main.bounds.size.width/2.3

struct RecipeBlock: View {
    var recipe: Recipe

    var body: some View {
        VStack {
            Image(recipe.imageName)
                .resizable()
                .frame(width: width, height: width)
            Text(recipe.name)
            Text(recipe.description)
        }
        .padding()
    
    }
}

struct RecipeBlock_Previews: PreviewProvider {
    static var previews: some View {
        RecipeBlock(recipe: recipeData[0])
    }
}
