//
//  MapView.swift
//  passport
//
//  Created by Enrique Diaz de Leon Hicks on 3/31/21.
//

import SwiftUI
import MapKit

struct MapView: View {
    
    var country: Country
    // Defaul value for London location
    @State var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 51.507222, longitude: -0.1275), span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5))
    
    var body: some View {
        VStack {
            Map(coordinateRegion: $region)
                .frame(width: 360, height: 300) // Map size
                .cornerRadius(15)
                .shadow(color: Color("RaisinBlack").opacity(0.5), radius: 5, x: 5, y: 5)
                
        }
        // This makes sure that when this screen appears, the region variable is updated with the data
        // received from the country variable
        .onAppear {
            print(country)
            region = MKCoordinateRegion(center:
                                            CLLocationCoordinate2D(latitude: CLLocationDegrees(country.lat),
                                                                   longitude: CLLocationDegrees(country.long)),
                                        // Indicates the zoom on map
                                        span: MKCoordinateSpan(latitudeDelta: 15, longitudeDelta: 15))
        }
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(country: Country.defaultCountry, region: MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 51.507222, longitude: -0.1275), span: MKCoordinateSpan(latitudeDelta: 50, longitudeDelta: 50)))
    }
}
