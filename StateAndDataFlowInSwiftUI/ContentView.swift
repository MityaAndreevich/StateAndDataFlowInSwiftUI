//
//  ContentView.swift
//  StateAndDataFlowInSwiftUI
//
//  Created by Dmitry Logachev on 04.11.2021.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var timer = TimeCounter()
    @EnvironmentObject private var userManager: UserManager
    
    var body: some View {
        VStack {
            Text("Hi, \(userManager.name)")
                .font(.largeTitle)
                .padding(.top, 100)
            Text("\(timer.counter)")
                .font(.largeTitle)
                .padding(.top, 40)
            ButtonView(
                color: .red,
                buttonTitle: timer.buttonTitle,
                action: timer.startTimer
            )
                .padding(.top, 50)
            Spacer()
            ButtonView(
                color: .blue,
                buttonTitle: "Log out",
                action: {
                    userManager.name = ""
                    userManager.isRegistered = false
                }
            )
                .padding(.bottom, 20)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(UserManager())
    }
}
