//
//  aplicacion_de_comida_iosApp.swift
//  aplicacion_de_comida_ios
//
//  Created by Ronaldo Andre Vargas Huaman on 9/08/22.
//

import SwiftUI

@main
struct aplicacion_de_comida_iosApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
