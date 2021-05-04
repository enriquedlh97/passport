//
//  ListView.swift
//  App2P_Pasapporte
//
//  Created by Karla Perales Lopez on 02/05/21.
//

// LISTA DE PAÍSES/CIUDADES (DEPENDE LA API QUE ENCUENTREN)
//

import SwiftUI

struct ListView: View {
    @StateObject var media: MediaModel
    @State var indexSelected: Int = 0
    
    var body: some View {
        GeometryReader { geo in
            ZStack {
                Color(#colorLiteral(red: 0.4509803922, green: 0.7607843137, blue: 0.831372549, alpha: 1))
                VStack {
                    VStack {
                        Text("Countries")
                            .font(.Lemon(size: 35))
                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            .padding(.top,50)
                    }
                    VStack {
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack {
                                ForEach(media.list) { country in
                                    NavigationLink(
                                        destination: MediaDetailView(media: country),
                                        label: {
                                            MediaCellView(media: country)
                                      //  .frame(width: geo.size.width)
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

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView(media: MediaModel())
    }
}
