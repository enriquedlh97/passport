//
//  HomeView.swift
//  App2P_Pasapporte
//
//  Created by Karla Perales Lopez on 02/05/21.
//  Updated by Enrique Diaz de Leon Hicks on 04/05/2021
//
// PÁGINA DE INICIO


import SwiftUI

struct HomeView: View {
    
    @StateObject var media = MediaModel()
    
    var body: some View {
        
        NavigationView {
            TabView {
                ListView()
                    .tabItem {
                        Label("Countries", systemImage: "pin.circle.fill")
                    }
                VisitView(media: media)
                    .tabItem {
                        Label("Visited", systemImage: "checkmark.circle.fill")
                        
                    }
                WeatherView(media: media)
                    .tabItem {
                        Label("Weather", systemImage: "sun.max.fill")
                    }
                
            }
            
        }
        .accentColor(Color(#colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)))
        .onAppear {
            UITabBar.appearance().barTintColor = UIColor(Color(#colorLiteral(red: 0.9986861348, green: 0.8718172312, blue: 0.3506337404, alpha: 1)))
            
        }
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

