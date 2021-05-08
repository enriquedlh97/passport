//
//  DateOfVisitInfo+CoreDataProperties.swift
//  App2P_Pasapporte
//
//  Created by Enrique Diaz de Lleon Hicks on 5/7/21.
//
//

import Foundation
import CoreData


extension DateOfVisitInfo {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<DateOfVisitInfo> {
        return NSFetchRequest<DateOfVisitInfo>(entityName: "DateOfVisitInfo")
    }

    @NSManaged public var id: UUID?
    @NSManaged public var country_name: String?
    @NSManaged public var date_of_visit: Date?
    
    var country_name_wrapped: String {
        country_name ?? " "
    }
    
    var date_of_visit_wrapped: Date {
        date_of_visit ?? Date()
    }

}

extension DateOfVisitInfo : Identifiable {

}
