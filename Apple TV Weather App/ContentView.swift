//
//  ContentView.swift
//  Apple TV Weather App
//
//  Created by Michael Marolt on 22.03.20.
//  Copyright © 2020 Michael Marolt. All rights reserved.
//

import SwiftUI

var resSize:CGFloat = 10

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
                    .font(.system(size: 20 * resSize))
                    .fontWeight(.light)
                VStack {
                    Text("Sankt Kanzian")
                        .foregroundColor(.white)
                        .font(.system(size: 11 * resSize))
                    Text("09:45 - Sunday, 22 Mar 2020 ")
                        .foregroundColor(.white)
                        .font(.system(size: 5 * resSize))
                }
                Image("sunny")
                    .frame(width: 23.1 * resSize, height: 23.1 * resSize, alignment: .center)
                
            }
            
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
