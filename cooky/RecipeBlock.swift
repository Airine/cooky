//
//  RecipeBlock.swift
//  cooky
//
//  Created by Dr.Fat on 2020/8/1.
//  Copyright © 2020 aaron-xin. All rights reserved.
//

import SwiftUI

struct RecipeBlock: View {
    var recipe: Recipe

    var body: some View {
        VStack {
//            recipe.image
//                .resizable()
//                .frame(width: 50, height: 50)
            Image("tomatoegg")
                .resizable()
                .frame(width: UIScreen.main.bounds.size.width/2.3, height: 300)
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
