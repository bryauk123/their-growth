//
//  their_growthApp.swift
//  their-growth
//
//  Created by Bryan Apodaca on 1/25/23.
//

import SwiftUI

@main
struct their_growthApp: App {
    
    // This connects our newfangled SwiftUI app with the UIApplicationDelegate
    // object mentioned in the Firebase documentation.
    @UIApplicationDelegateAdaptor(MilesDelegate.self) var appDelegate

    //@StateObject private var foodEntries = FoodEntries()

    var body: some Scene {
        
        WindowGroup {
            ContentView()
                .environmentObject(MilesAuth())
                //.environmentObject(OurFoodDiaryDB())
                //.environmentObject(foodEntries)

        }
    }
}
