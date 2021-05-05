//
//  Data.swift
//  App2P_Pasapporte
//
//  Created by Enrique Diaz de Leon Hicks on 5/5/21.
//

import Foundation
import SwiftUI

// Identifiable is used when asigning a type of an id to an the struct
// it is telling swift that it can be uniquely identifiable
struct Data: Identifiable {
    // Used to hold the overall data data gotten from API
    
    var id = UUID() // Lets swift assign and id automatically
    var africa: Region
    var americas: Region
    var asia: Region
    var europe: Region
    var oceania: Region
}
