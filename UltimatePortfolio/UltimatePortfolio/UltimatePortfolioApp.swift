//
//  UltimatePortfolioApp.swift
//  UltimatePortfolio
//
//  Created by Gerd Faedtke on 09.03.23.
//

import SwiftUI

@main
struct UltimatePortfolioApp: App {
    @StateObject var dataController = DataController()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, dataController.container.viewContext)
                .environmentObject(dataController)
        }
    }
}
