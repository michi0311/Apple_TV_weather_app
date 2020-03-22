//
//  ContentView.swift
//  Apple TV Weather App
//
//  Created by Michael Marolt on 22.03.20.
//  Copyright © 2020 Michael Marolt. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Image("Background_Image")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
            HStack {
                Text("14°")
                    .foregroundColor(.white)
                    .font(.title)
                VStack {
                    Text("Sankt Kanzian")
                        .foregroundColor(.white)
                        .font(.largeTitle)
                    Text("09:45 - Sunday, 22 Mar 2020 ")
                        .foregroundColor(.white)
                        .font(.subheadline)
                }
                Text("Icon")
                    .foregroundColor(.white)
                    .font(.title)
            }
            
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
