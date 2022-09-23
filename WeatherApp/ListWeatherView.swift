//
//  ListWeatherView.swift
//  WeatherApp
//
//  Created by N N on 22/09/2022.
//

import SwiftUI

struct Weather: Identifiable {
    var id = UUID()
    var name: String
    var image: String
}

let weathers: [Weather] = [
    Weather(name: "Sun", image: "sun.max"),
    Weather(name: "Clouds", image: "cloud"),
    Weather(name: "Storm", image: "cloud.heavyrain"),
    Weather(name: "Moon", image: "moon"),
    Weather(name: "Snow", image: "snowflake"),
    Weather(name: "Tornado", image: "tornado")
]

struct ListWeatherView: View {
    var body: some View {
        
            NavigationView {
                List (weathers) { i in
                    NavigationLink(destination: DetailWeatherView(weathers: i)) {
                        Image(systemName: i.image)
                        Text(i.name)
                    }.padding(10)
//                        .foregroundColor(.white)
                }
                .navigationTitle("Weather").bold()
                .background(LinearGradient(colors: [.yellow, .blue, .purple, .black],
                                           startPoint: .top,
                                           endPoint: .bottom))
                .scrollContentBackground(.hidden)
            }
        .ignoresSafeArea(.all)
    }
}

struct ListWeatherView_Previews: PreviewProvider {
    static var previews: some View {
        ListWeatherView()
    }
}
