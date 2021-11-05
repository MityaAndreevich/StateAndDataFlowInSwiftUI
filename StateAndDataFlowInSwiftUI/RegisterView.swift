//
//  RegisterView.swift
//  StateAndDataFlowInSwiftUI
//
//  Created by Dmitry Logachev on 05.11.2021.
//

import SwiftUI

struct RegisterView: View {
    @State private var userName = ""
    @EnvironmentObject private var user: UserManager
    
    var body: some View {
        VStack {
            TextField("Enter Your name...", text: $userName)
                .multilineTextAlignment(.center)
            Button(action: registerUser) {
                HStack {
                    Image(systemName: "checkmark.circle")
                    Text("Ok")
                }
            }
        }
    }
    
    private func registerUser() {
        if !userName.isEmpty {
            user.name = userName
            user.isRegistrated.toggle()
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
