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
    @State var currentDate = Date()
    @State var dateText: String = formatTime()
    let dateTimer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    let temperaturTimer = Timer.publish(every: 10, on: .main, in: .common).autoconnect()
    
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
                    Text("\(dateText)")
                        .onReceive(dateTimer) { input in
                        self.dateText = formatTime()
                    }
                        .foregroundColor(.white)
                        .font(.system(size: 4.4 * resSize))
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

func formatTime() -> String {
    let timeFormatter = DateFormatter()
    timeFormatter.timeStyle = .short
    let timeOut = timeFormatter.string(from: Date())
    
    let dateFormatter = DateFormatter()
    dateFormatter.dateStyle = .full
    let dateOut = dateFormatter.string(from: Date())
    
    
    return timeOut + " - " + dateOut
}
