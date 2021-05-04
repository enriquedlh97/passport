//
//  WeatherView.swift
//  App2P_Pasapporte
//
//  Created by Karla Perales Lopez on 02/05/21.
//
// FALTA CORREGIR - VACIO CP DE SERIESVIEW
// CLIMA

import SwiftUI

struct WeatherView: View {
    @StateObject var media: MediaModel
    
    var body: some View {
        GeometryReader { geo in
            ZStack {
                Color(#colorLiteral(red: 0.4509803922, green: 0.7607843137, blue: 0.831372549, alpha: 1))
                VStack {
                    VStack {
                        Text("Weather")
                            .font(.Lemon(size: 35))
                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            .padding(.top,50)
                            
                    }
                    VStack {
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack {
                                ForEach(media.weather) { weather in
                                    NavigationLink(
                                        destination: MediaDetailView(media: weather),
                                        label: {
                                            MediaCellView(media: weather)
                                                .frame(width: geo.size.width)
                                        })
                                }
                            }
                            
                        }
                    }
                    .padding(.top,-6)
                }
                .padding(.bottom,80)
                
            }
            .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
        }
        
    }
}

struct WeatherView_Previews: PreviewProvider {
    static var previews: some View {
        WeatherView(media: MediaModel())
    }
}
