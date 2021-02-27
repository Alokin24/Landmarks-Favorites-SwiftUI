//
//  CircleImage.swift
//  Landmarks
//
//  Created by Nikola Anastasovski on 21.2.21.
//

import SwiftUI

struct CircleImage: View {
    
    @EnvironmentObject var modelData: ModelData
    
    var image: Image
    var body: some View {
        image
            .clipShape(Circle())
            .overlay(
                Circle()
                    .stroke(Color.white, lineWidth: 4)
                    .shadow(radius: 7)
                        
            )
    }
}

struct CircleImage_Previews: PreviewProvider {
    
    static var landmarks = ModelData().landmarks
    
    static var previews: some View {
        CircleImage(image: landmarks[0].image)
    }
}
