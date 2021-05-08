//
//  VisitedDetailView.swift
//  App2P_Pasapporte
//
//  Created by Enrique Diaz de Leon Hicks on 5/7/21.
//

import SwiftUI

struct VisitedDetailView: View {
    
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
    }
}

struct VisitedDetailView_Previews: PreviewProvider {
    static var previews: some View {
        VisitedDetailView(data: DataModel(), country: Visited())
    }
}
