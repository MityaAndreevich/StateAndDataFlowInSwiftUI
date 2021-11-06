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
    @EnvironmentObject private var userStorage: StorageManager
    
    var body: some View {
        VStack {
            HStack {
                TextField("Enter Your name...", text: $userName)
                    .multilineTextAlignment(.center)
                Text("\(userName.count)")
                    .foregroundColor(setColorForCharCounter())
            }
            Button(action: registerUser) {
                HStack {
                    Image(systemName: "checkmark.circle")
                    Text("Ok")
                }
                .disabled(setOkButtonAvailability())
            }
        }
        .padding()
    }
    
    private func registerUser() {
        if !userName.isEmpty {
            user.name = userName
            user.isRegistered.toggle()
            
            userStorage.name = user.name
            userStorage.isRegistered = user.isRegistered
        }
    }
    
    private func setColorForCharCounter() -> Color {
        let color: Color
        if userName.count >= 0 && userName.count < 3 {
            color = .red
            return color
        } else {
            color = .green
            return color
        }
    }
    
    private func setOkButtonAvailability() -> Bool {
        let bool: Bool
        if userName.count >= 0 && userName.count < 3 {
            bool = true
            return bool
        } else {
            bool = false
            return bool
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
