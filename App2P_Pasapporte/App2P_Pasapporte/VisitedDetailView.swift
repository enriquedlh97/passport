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
    
    var body: some View {
        VStack {
            ZStack {
            List {
                ForEach(country.visitDate, id: \.self) { visit in
                    Text("hola")
                }
            }
                VStack {
                    Spacer()
                    Button {
                        AddDateOfVisit(country: country)
                    } label: {
                        Image(systemName: "plus.circle.fill")
                            .font(.largeTitle)
                            .foregroundColor(.red)
                    }
                }
        }
        }
    }
    
    func AddDateOfVisit(country: Visited) {
        country.visitDate.append(Date())
        try? viewContext.save()
    }
}

struct VisitedDetailView_Previews: PreviewProvider {
    static var previews: some View {
        VisitedDetailView(country: Visited())
    }
}
