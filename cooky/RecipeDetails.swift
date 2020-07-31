//
//  RecipeDetails.swift
//  cooky
//
//  Created by Dr.Fat on 2020/8/1.
//  Copyright © 2020 aaron-xin. All rights reserved.
//
import AVFoundation
import SwiftUI
import VideoPlayer


private let demoURL = URL(string: "https://www.radiantmediaplayer.com/media/big-buck-bunny-360p.mp4")!

struct RecipeDetails: View {
    @State private var play: Bool = true
    
    var body: some View {
        VideoPlayer(url: demoURL, play: $play)
    }
}


struct RecipeDetails_Previews: PreviewProvider {
    static var previews: some View {
        RecipeDetails()
    }
}
