//
//  VisitedDetailView.swift
//  App2P_Pasapporte
//
//  Created by Enrique Diaz de Leon Hicks on 5/7/21.
//

import SwiftUI

struct VisitedDetailView: View {
    
    @Environment(\.managedObjectContext) var viewContext
    
    @StateObject var data: DataModel
    @FetchRequest(
        entity: DateOfVisitInfo.entity(),
        sortDescriptors: [NSSortDescriptor(key: "country_name", ascending: true)]
    )
    var date_of_visit: FetchedResults<DateOfVisitInfo>
    
    var country: Visited
    
    var body: some View {
        VStack {
            ZStack {
                List {
                    ForEach(date_of_visit) { visit in
                        VStack {
                            Text(visit.country_name_wrapped)
                            //DateOfVisitView()
                        }
                        // Adds functions to each row, allows to delete
                        .contextMenu {
                            Button {
                                AddDateOfVisit()
                                //DeleteFromVisited(country: country)
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
    }
    
    func AddDateOfVisit() {
        let visit = DateOfVisitInfo(context: viewContext)
        visit.country_name = Country.defaultCountry.name
        visit.date_of_visit = Date()
        try? viewContext.save()
    }
}

struct VisitedDetailView_Previews: PreviewProvider {
    static var previews: some View {
        VisitedDetailView(data: DataModel(), country: Visited())
    }
}
