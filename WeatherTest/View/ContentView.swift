//
//  ContentView.swift
//  WeatherTest
//
//  Created by Shiddiq Syuhada on 03/03/22.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = WeatherViewModel()
//    @StateObject var locationViewModel = LocationViewModel()
    
    var body: some View {
        NavigationView{
            VStack{
                Text(viewModel.timezone)
                Text(viewModel.temp)
                Text(viewModel.title)
                Text(viewModel.description)
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
            
        }
        .navigationTitle("Weather")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
