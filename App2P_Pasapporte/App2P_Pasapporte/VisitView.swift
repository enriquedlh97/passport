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
    
    @Environment(\.managedObjectContext) var viewContext
    
    @StateObject var data: DataModel
    @FetchRequest(
        entity: Visited.entity(),
        sortDescriptors: [NSSortDescriptor(key: "name", ascending: true)]
    )
    var visited: FetchedResults<Visited>
    
    var body: some View {
        // ******** STARTS ORIGINAL *******
        VStack {
            ZStack {
                List {
                    ForEach(visited) { country in
                        VStack {
                            NavigationLink(
                                destination: VisitedDetailView(country: country),
                                label: {VisitedCellView(country: country)}
                            )
                        }
                        // Adds functions to each row, allows to delete
                        .contextMenu {
                            Button {
                                DeleteFromVisited(country: country)
                            } label: {
                                HStack {
                                    Text("Delete")
                                    Image(systemName: "xmark.circle.fill")
                                }
                            }
                        }
                    }
                }
            }
        }
        // ********* END ORIGINAL *********
    }
    func SaveToVisited() {
        // Object of the entity type to be able to save them
        let visited = Visited(context: viewContext)
        
        visited.id = Country.defaultCountry.id
        visited.name = Country.defaultCountry.name
        visited.alpha2Code = Country.defaultCountry.alpha2Code
        visited.alpha3Code = Country.defaultCountry.alpha3Code
        visited.subregion = Country.defaultCountry.subregion
        visited.population = Country.defaultCountry.population
        visited.lat = Country.defaultCountry.lat
        visited.long = Country.defaultCountry.long
        visited.flag = Country.defaultCountry.flag
        visited.capital = Country.defaultCountry.capital
        visited.region = "africa"
        //visited.visitDate = [Date()]
        try? viewContext.save()
    }
    
    func DeleteFromVisited(country: Visited) {
        //        if let index = visited.firstIndex(where: {$0.name == country.name}) {
        //            viewContext.delete(visited[index])
        //        }
        viewContext.delete(country)
        try? viewContext.save()
    }
}

struct VisitView_Previews: PreviewProvider {
    static var previews: some View {
        VisitView(data: DataModel())
    }
}
