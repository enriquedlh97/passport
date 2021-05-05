//
//  Region.swift
//  App2P_Pasapporte
//
//  Created by Enrique Diaz de Leon Hicks on 5/5/21.
//

import Foundation
import SwiftUI

// Identifiable is used when asigning a type of an id to an the struct
// it is telling swift that it can be uniquely identifiable
struct Region: Identifiable {
    // Used to hold the region-specific data gotten from API
    
    var id = UUID() // Lets swift assign and id automatically
    var regionName: String // Holds the name of a country
    var countriesList = [Country]()
}
