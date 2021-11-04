//
//  ContentView.swift
//  StateAndDataFlowInSwiftUI
//
//  Created by Dmitry Logachev on 04.11.2021.
//

import SwiftUI

struct ContentView: View {
    private let timer = TimeCounter()
    
    var body: some View {
        VStack {
            Text("\(timer.counter)")
                .font(.largeTitle)
                .padding(.top, 100)
            Spacer()
            ButtonView(action: timer.startTimer)
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
