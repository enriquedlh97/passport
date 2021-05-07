//
//  VisitView.swift
//  App2P_Pasapporte
//
//  Created by Karla Perales Lopez on 02/05/21.
//  Updated by Enrique Diaz de Leon Hicks 06/05/21
//
//  AQUÍ SE GUARDAN LOS PAÍSES/CIUDADES VISITADOS DE LA LISTA
// Estaría padre que se pudieran enlistar y al dar click el usuario pudiera guardar la fecha y ciudad de visita

import SwiftUI

struct VisitView: View {
    
    @StateObject var data: DataModel
    @FetchRequest(
        entity: Visited.entity(),
        sortDescriptors: [NSSortDescriptor(key: "name", ascending: true)]
    )
    var visited: FetchedResults<Visited>
    
    var body: some View {
    
        VStack {
            ScrollView(.vertical, showsIndicators: false) {
                ForEach(visited) { country in
                    Text(country.name_wrapped)
                }
            }
        }
        
    }
    
}

struct VisitView_Previews: PreviewProvider {
    static var previews: some View {
        VisitView(data: DataModel())
    }
}
