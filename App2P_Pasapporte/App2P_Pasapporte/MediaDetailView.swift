//
//  MediaDetailView.swift
//  App2P_Pasapporte
//
//  Created by Karla Perales Lopez on 02/05/21.
//

import SwiftUI

struct MediaDetailView: View {
    var media: Media
    
    var body: some View {
        GeometryReader { geo in
            VStack {
                ScrollView(.vertical, showsIndicators: false) {
                    VStack {
                        Text(media.country)
                            .font(.Mon(size: 24))
                            .foregroundColor(Color("BelizeHole"))
                            .multilineTextAlignment(.center)
                            .padding(.horizontal,20)
                            .padding(.top,6)
                        
                        Text(media.city)
                            .font(.Mon(size: 24))
                            .foregroundColor(Color("BelizeHole"))
                            .multilineTextAlignment(.center)
                            .padding(.horizontal,20)
                            .padding(.top,6)
                        
                        Text(media.overview)
                            .font(.Mon(size: 24))
                            .foregroundColor(Color("BelizeHole"))
                            .multilineTextAlignment(.center)
                            .padding(.horizontal,20)
                            .padding(.top,6)
                        
                        NavigationLink(
                            destination: WebView(html: media.video),
                            label: {
                                Label("Video", systemImage: "play.tv.fill")
                                    .font(.Mon(size: 20))
                                    .foregroundColor(Color("BelizeHole"))
                                    .multilineTextAlignment(.center)
                                    .padding(.horizontal,20)
                                    .padding(.top,10)
                            })
                    }
                    
// LO DEJO COMENTADO EN CASO DE QUE SE VAYA A AGREGAR UNA FOTO DEL PAÍS/CIUDAD O BANDERA
//
//                    VStack {
//                        TabView {
//                            ForEach(media.images, id:\.self) { image in
//                                Image(image)
//                                    .resizable()
//                                    .scaledToFit()
//                                    .frame(width: geo.size.width-40)
//                                    .cornerRadius(40)
//                                    .overlay(
//                                        ZStack {
//                                            RoundedRectangle(cornerRadius: 40)
//                                                .stroke(Color("SourLemon"), style: StrokeStyle(lineWidth: 10, lineCap: .round, lineJoin: .round))
//                                        }
//
//                                    )
//                                    .padding(.horizontal,20)
//                                    .padding(.vertical,10)
//
//                            }
//                        }
//                        .tabViewStyle(PageTabViewStyle())
//                        .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
//                    }
                }
            }
            .navigationBarTitle(media.country, displayMode: .inline)
            .navigationBarColor(UIColor(named: "BelizeHole"))
            .toolbar {
                // Nombre del país
                ToolbarItem(placement: .principal) {
                    Text(media.country)
                        .font(.Mon(size: 24))
                        .foregroundColor(Color("Alizarin"))
                }
            }
        }
    }
}

struct MediaDetailView_Previews: PreviewProvider {
    static var previews: some View {
        MediaDetailView(media: Media.defaultMedia)
    }
}
