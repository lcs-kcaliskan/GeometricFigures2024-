//
//  CircleView.swift
//  GeometricFigures
//
//  Created by Ahmet Kaan Caliskan on 2024-10-03.
//

import SwiftUI

struct CircleView: View {
    
    //MARK: Stored properties
@State var currentSphere = Sphere(radius: 50)

    //MARK: Computed properties
    var body: some View {
        VStack{
            //Add an Image
            Image("SphereDiagram")
                .resizable()
                .scaledToFit()
            //Label (describe what the slider is for)
            Text("Radius")
            
            //Slider Control - to allow for user input
            Slider(value: $currentSphere.radius,
                   in: 1...100,
                   step: 1.0
             )
            //Label (Show the current slider value
            Text("Radius is: \(currentSphere.radius.formatted())")
                .padding(20)
            //Label (Show the Surface Area
            Text("Area is: \(currentSphere.area.formatted())")
                .padding(20)
            //Label (Show the Volume
            Text("Volume is: \(currentSphere.volume.formatted())")
                .padding(20)
            
            Spacer()
        }
        .border(.red)
            .padding()
    }
}

#Preview {
    CircleView()
}
