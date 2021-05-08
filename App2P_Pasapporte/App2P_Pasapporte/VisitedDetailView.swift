//
//  VisitedDetailView.swift
//  App2P_Pasapporte
//
//  Created by Enrique Diaz de Leon Hicks on 5/7/21.
//

import SwiftUI

struct VisitedDetailView: View {
    
    var country: Visited
    
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
        
    }
}

struct VisitedDetailView_Previews: PreviewProvider {
    static var previews: some View {
        VisitedDetailView(country: Visited())
    }
}
