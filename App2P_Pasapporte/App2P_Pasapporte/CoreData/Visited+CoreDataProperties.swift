//
//  Visited+CoreDataProperties.swift
//  App2P_Pasapporte
//
//  Created by Enrique Diaz de Leon Hicks on 5/6/21.
//
//

import Foundation
import CoreData


extension Visited {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Visited> {
        return NSFetchRequest<Visited>(entityName: "Visited")
    }

    @NSManaged public var id: UUID?
    @NSManaged public var name: String?
    @NSManaged public var alpha2Code: String?
    @NSManaged public var alpha3Code: String?
    @NSManaged public var subregion: String?
    @NSManaged public var population: Double
    @NSManaged public var lat: Float
    @NSManaged public var long: Float
    @NSManaged public var flag: String?
    @NSManaged public var capital: String?
    @NSManaged public var region: String?

}

extension Visited : Identifiable {

}
