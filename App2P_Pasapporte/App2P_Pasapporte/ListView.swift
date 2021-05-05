//
//  ListView.swift
//  App2P_Pasapporte
//
//  Created by Karla Perales Lopez on 02/05/21.
//  Updated by Enrique Diaz de Leon Hicks 05/05/2021
//

// LISTA DE PAÍSES/CIUDADES (DEPENDE LA API QUE ENCUENTREN)
//

import SwiftUI

struct ListView: View {
    @StateObject var media: MediaModel
    @State var indexSelected: Int = 0
    
    var body: some View {
        
        NavigationView {
            ZStack {
                Color(#colorLiteral(red: 0.4509803922, green: 0.7607843137, blue: 0.831372549, alpha: 1)).ignoresSafeArea()
                VStack {
                    VStack {
                        Text("Countries")
                            .font(.Lemon(size: 35))
                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                    }
                    VStack {
                        List {
                            Section(
                                header: Text("Africa"),
                                content: {
                                    
                                })
                            Section(
                                header: Text("Americas"),
                                content: {
                                    
                                })
                            Section(
                                header: Text("Asia"),
                                content: {
                                    
                                })
                            Section(
                                header: Text("Europe"),
                                content: {
                                    
                                })
                            Section(
                                header: Text("Oceania"),
                                content: {
                                    
                                })
                        }
                    }
                }
            }
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView(media: MediaModel())
    }
}
