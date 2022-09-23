//
//  DetailWeatherView.swift
//  WeatherApp
//
//  Created by N N on 22/09/2022.
//

import SwiftUI

struct DetailWeatherView: View {
    
    let weathers: Weather
    
    var body: some View {
        ZStack {
            Rectangle()
            LinearGradient(colors: [.yellow, .blue, .purple, .black],
                                   startPoint: .top,
                                   endPoint: .bottom)
//            LinearGradient(colors: [.yellow, .orange, .blue, .purple, .black],
//                                   startPoint: .top,
//                                   endPoint: .bottom)
//                            .foregroundColor(.blue)
            VStack {
                Image(systemName: weathers.image)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 200, height: 200)
                    .padding(40)
                Text(weathers.name)
            }
            .foregroundColor(.white)
            .font(.largeTitle)
        }
        .ignoresSafeArea(.all)
    }
}

struct DetailWeatherView_Previews: PreviewProvider {
    static var previews: some View {
        DetailWeatherView(weathers: Weather(name: "Sun", image: "sun.max.fill"))
    }
}

