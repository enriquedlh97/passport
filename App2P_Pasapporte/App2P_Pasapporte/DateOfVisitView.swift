//
//  DateOfVisitView.swift
//  App2P_Pasapporte
//
//  Created by Enrique Diaz de Leon Hicks on 5/7/21.
//

import SwiftUI

struct DateOfVisitView: View {
    
    // Date initialized to current date
    //@State private var visitDate = Date()
    @State public var visitDate: Date
    
    
    var body: some View {
        
        DatePicker("Visited on", selection: $visitDate, in: ...Date(), displayedComponents: .date)
        
    }
}

struct DateOfVisitView_Previews: PreviewProvider {
    static var previews: some View {
        DateOfVisitView(visitDate: Date())
        //DateOfVisitView()
    }
}
