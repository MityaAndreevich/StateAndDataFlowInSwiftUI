//
//  StateAndDataFlowInSwiftUIApp.swift
//  StateAndDataFlowInSwiftUI
//
//  Created by Dmitry Logachev on 04.11.2021.
//

import SwiftUI

@main
struct StateAndDataFlowInSwiftUIApp: App {
    @StateObject private var userManager = UserManager()
    @StateObject private var storageManager = StorageManager()
    
    var body: some Scene {
        WindowGroup {
            StarterView()
                .environmentObject(userManager)
                .environmentObject(storageManager)
        }
    }
}
