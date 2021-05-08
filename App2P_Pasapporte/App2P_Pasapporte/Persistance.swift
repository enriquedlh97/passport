//
//  Persistance.swift
//  App2P_Pasapporte
//
//  Created by Enrique Diaz de Leon Hicks on 5/7/21.
//

import CoreData

struct PersistanceController {
    static let shared = PersistanceController()
    
    let container: NSPersistentContainer
    let container2: NSPersistentContainer
    
    init(inMemory: Bool = false) {
        container = NSPersistentContainer(name: "VisitedModel")
        container2 = NSPersistentContainer(name: "DateOfVisitModel")
        if inMemory {
            container.persistentStoreDescriptions.first!.url = URL(fileURLWithPath: "/dev/null")
            container2.persistentStoreDescriptions.first!.url = URL(fileURLWithPath: "/dev/null")
        }
        container.loadPersistentStores(completionHandler: { (storeDescription, error) in
            if let error = error as NSError? {
                fatalError("Unresolved error \(error), \(error.userInfo)")
            }
        })
    }
}
