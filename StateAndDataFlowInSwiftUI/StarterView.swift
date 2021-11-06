//
//  StarterView.swift
//  StateAndDataFlowInSwiftUI
//
//  Created by Dmitry Logachev on 05.11.2021.
//

import SwiftUI

struct StarterView: View {
    @EnvironmentObject private var user: UserManager
    @EnvironmentObject private var userStorage: StorageManager
    
    var body: some View {
        Group {
            if userStorage.isRegistered {
                ContentView()
            } else if user.isRegistered {
                ContentView()
            } else {
                RegisterView()
            }
        }
    }
}

struct StarterView_Previews: PreviewProvider {
    static var previews: some View {
        StarterView()
            .environmentObject(UserManager())
            .environmentObject(StorageManager())
    }
}
