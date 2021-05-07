//
//  AddToVisitedView.swift
//  App2P_Pasapporte
//
//  Created by Enrique Diaz de Leon Hicks on 5/7/21.
//

import SwiftUI

struct AddToVisitedView: View {
    
    @Environment(\.managedObjectContext) var viewContext
    
    var fetchRequest: FetchRequest<Visited>
    var visited: FetchedResults<Visited> {
        fetchRequest.wrappedValue
    }
    
    var country: Country
    var region: String
    
    var body: some View {
        VStack {
            // Checks if element is already in favorites
            if visited.count == 0 {
                // If not, then adds fucntionality to add it
                Button(action: {
                    self.SaveCountryToVisited(country: country, region: region)
                }) {
                    Image(systemName: "mapping.circle")
                        .foregroundColor(.gray)
                        .font(.system(size: 24))
                }
            } else {
                // if it is, then adds functionality to take the element off
                Button(action: {
                    self.DeleteCountryFromVisited(country: country)
                }) {
                    Image(systemName: "mapping.circle.fill")
                        .foregroundColor(.red)
                        .font(.system(size: 24))
                }
            }
        }    }
    
    init(country: Country, region: String) {
        self.country = country
        self.region = region
        // Predicate checks that the id value is the same as the one indicated in NSNumber
        fetchRequest = FetchRequest<Visited>(entity: Visited.entity(), sortDescriptors: [], predicate: NSPredicate(format: "id == %@", NSNumber(value: country.id)))
    }
    
    func SaveCountryToVisited(country: Country, region: String) {
        let visited = Visited(context: viewContext)
        visited.id = country.id
        visited.name = country.name
        visited.alpha2Code = country.alpha2Code
        visited.alpha3Code = country.alpha3Code
        visited.subregion = country.subregion
        visited.population = country.population
        visited.lat = country.lat
        visited.long = country.long
        visited.flag = country.flag
        visited.capital = country.capital
        visited.region = region
        try? viewContext.save()
    }
    
    func DeleteCountryFromVisited(country: Country) {
        if let index = visited.firstIndex(where: {$0.id == country.id}) {
            viewContext.delete(visited[index])
            try? viewContext.save()
        }
    }
}

struct AddToVisitedView_Previews: PreviewProvider {
    static var previews: some View {
        AddToVisitedView(country: Country.defaultCountry, region: "africa")
    }
}
