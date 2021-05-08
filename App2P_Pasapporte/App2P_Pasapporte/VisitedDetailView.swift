//
//  VisitedDetailView.swift
//  App2P_Pasapporte
//
//  Created by Enrique Diaz de Leon Hicks on 5/7/21.
//

import SwiftUI

struct VisitedDetailView: View {
    
    @Environment(\.managedObjectContext) var viewContext
    
    @ObservedObject var country: Visited
    
    @State var visitDate = Date()
    
    var body: some View {
        VStack {
            ZStack {
                List {
                    ForEach(country.visitDate, id: \.self) { visit in
                        VStack {
                        DateOfVisitView(visitDate: visit)
                        }
                        // Adds functions to each row, allows to delete
                        .contextMenu {
                            Button {
                                DeleteVisit(country: country)
                            } label: {
                                HStack {
                                    Text("Delete")
                                    Image(systemName: "xmark.circle.fill")
                                }
                            }
                        }

                    }
                }
                VStack {
                    Spacer()
                    Button {
                        AddDateOfVisit(country: country, visitDate: visitDate)
                    } label: {
                        Image(systemName: "plus.circle.fill")
                            .font(.largeTitle)
                            .foregroundColor(.red)
                    }
                }
            }
        }
    }
    
    func AddDateOfVisit(country: Visited, visitDate: Date) {
        
        country.visitDate.append(visitDate)
        try? viewContext.save()
    }
    
    func DeleteVisit(country: Visited) {
//        Should delete the date
//        country.visitDate
//        try? viewContext.save()
    }
}

struct VisitedDetailView_Previews: PreviewProvider {
    static var previews: some View {
        VisitedDetailView(country: Visited())
    }
}
