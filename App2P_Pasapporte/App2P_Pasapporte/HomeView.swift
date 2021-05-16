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
    
    @StateObject var data = DataModel()
    
    var body: some View {
        
        VStack{
            NavigationView  {
                TabView {
                    
                    ListView(data: data)
                        .tabItem {
                            Label("Countries", systemImage: "pin.circle.fill")
                            
                        }
                    VisitView(data: data)
                        .tabItem {
                            Label("Visited", systemImage: "checkmark.circle.fill")
                        }
                }
            }
            .accentColor(Color(#colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)))
            .onAppear {
                UITabBar.appearance().barTintColor = UIColor(Color("NaplesYellow"))
                
            }
            
        }
        .navigationBarTitle("Countries")
        .navigationBarTitleDisplayMode(.inline)
        
    }
    
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

