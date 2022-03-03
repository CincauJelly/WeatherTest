//
//  ContentView.swift
//  WeatherTest
//
//  Created by Shiddiq Syuhada on 03/03/22.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = WeatherViewModel()
    @StateObject var cityModel = CityViewModel()
//    @StateObject var locationViewModel = LocationViewModel()
    @State private var city: String = ""
    
    var body: some View {
        NavigationView{
            VStack{
                Text(viewModel.timezone)
                Text(viewModel.temp)
                Text(viewModel.title)
                Text(viewModel.description)
                TextField("Kota", text: $city)
                    .padding()
                    .border(Color.gray)
                    .clipShape(RoundedRectangle(cornerRadius: 1))
                Button("Get New Weather", action: {
                    viewModel.getWeather(latitude: -6.2146, longitude: 106.8451)
                })
                    .padding(10)
                    .foregroundColor(.white)
                    .background(Color.blue)
                    .clipShape(RoundedRectangle(cornerRadius: 8))
//                Text(String(cityModel.lon))
//                Text(String(cityModel.lat))
                Text(cityModel.name)
                Text(cityModel.state)
                Text(cityModel.country)
                Button("Get City", action:{
                    cityModel.getCoordinates(city: "Jakarta")
                })
                    .padding(10)
                    .foregroundColor(.white)
                    .background(Color.blue)
                    .clipShape(RoundedRectangle(cornerRadius: 8))
                
//                switch locationViewModel.authorizationStatus {
//                case .notDetermined:
//                    AnyView(RequestLocationView())
//                        .environmentObject(locationViewModel)
//                case .restricted:
//                    ErrorView(errorText: "Location use is restricted.")
//                case .denied:
//                    ErrorView(errorText: "The app does not have location permissions. Please enable them in settings.")
//                case .authorizedAlways, .authorizedWhenInUse:
//                    TrackingView()
//                        .environmentObject(locationViewModel)
//                default:
//                    Text("Unexpected status")
//                }
            }
            .padding()
        }
        .navigationTitle("Weather")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
