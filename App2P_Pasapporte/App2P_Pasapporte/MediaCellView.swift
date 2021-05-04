//
//  MediaCellView.swift
//  App2P_Pasapporte
//
//  Created by Karla Perales Lopez on 02/05/21.
//

import SwiftUI

struct MediaCellView: View {
    
    var media: Media
    
    var body: some View {
        GeometryReader { geo in
            VStack {
                ZStack {
                    
// LO DEJO COMENTADO EN CASO DE QUE SE VAYA A AGREGAR UNA FOTO DEL PAÍS/CIUDAD O BANDERA
//                    VStack {
//                        Image(media.images[0])
//                            .resizable()
//                            .scaledToFit()
//                            .frame(width: geo.size.width-40)
//                            .cornerRadius(40)
//                            .overlay(
//                                ZStack {
//                                    RoundedRectangle(cornerRadius: 40)
//                                        .stroke(Color("SourLemon"), style: StrokeStyle(lineWidth: 10, lineCap: .round, lineJoin: .round))
//                                    VStack {
//                                        Spacer()
//                                        HStack {
//                                            ScoreView(score: media.score)
//                                            Spacer()
//                                        }
//                                        .padding(.leading,40)
//                                        .padding(.bottom,-35)
//                                    }
//                                }
//
//                            )
//                            .padding(.horizontal,20)
//                            .padding(.top,10)
//
//                    }
                    
                    
                }
                VStack {
                    HStack{
                        Text(media.country)
                            .font(.Mon(size: 40))
                        Text(media.city)
                            .font(.Mon(size: 40))
                        Spacer()
                    }
                    
                    .padding(.top,40)
                }
                .foregroundColor(Color(#colorLiteral(red: 0.1019607857, green: 0.2784313858, blue: 0.400000006, alpha: 1)))
                .padding(.leading,20)

            }
        }
    }
}

struct MediaCellView_Previews: PreviewProvider {
    static var previews: some View {
        MediaCellView(media: Media.defaultMedia)
    }
}
