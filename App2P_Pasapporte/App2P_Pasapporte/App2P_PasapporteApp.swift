//
//  App2P_PasapporteApp.swift
//  App2P_Pasapporte
//
//  Created by Karla Perales Lopez on 02/05/21.
//  Updated by Enrique Diaz de Leon Hicks on 04/05/2021
//
//
// RGB COLORES = PARA USAR EN COLOR LITERAL
// COLORES USADOS EN LOGO
// Naranja: f36432
// Azul planeta: 6cc9d5
//
// COLORES USADOS EN BACKGROUND
//  Azul claro = 73C2D4
//  Amarillo = ffde59
//

import SwiftUI

@main
struct App2P_PasapporteApp: App {
    
    let persistanceController = PersistanceController.shared
    
    var body: some Scene {
        WindowGroup {
            PlaceHolderHomeView()
                .environment(\.managedObjectContext,
                             persistanceController.container.viewContext)
        }
    }
}
