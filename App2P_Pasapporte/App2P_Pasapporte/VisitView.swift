//
//  VisitView.swift
//  App2P_Pasapporte
//
//  Created by Karla Perales Lopez on 02/05/21.
//
//  AQUÍ SE GUARDAN LOS PAÍSES/CIUDADES VISITADOS DE LA LISTA
// Estaría padre que se pudieran enlistar y al dar click el usuario pudiera guardar la fecha y ciudad de visita

import SwiftUI

struct VisitView: View {
    @StateObject var media: MediaModel
    
    var body: some View {
        GeometryReader { geo in
            ZStack {
                Color(#colorLiteral(red: 0.4509803922, green: 0.7607843137, blue: 0.831372549, alpha: 1))
                VStack {
                    VStack {
                        Text("Visited")
                            .font(.Lemon(size: 38))
                            .foregroundColor(Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)))
                            .padding(.top,40)
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

struct VisitView_Previews: PreviewProvider {
    static var previews: some View {
        VisitView(media: MediaModel())
    }
}
