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
    @StateObject var data = DataModel()
    @State var indexSelected: Int = 0
    
    var body: some View {
        
        NavigationView {
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
                
                .listStyle(PlainListStyle())
            }
            .navigationBarTitle("Countries")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
