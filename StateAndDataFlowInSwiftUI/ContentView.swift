//
//  ContentView.swift
//  StateAndDataFlowInSwiftUI
//
//  Created by Dmitry Logachev on 04.11.2021.
//

import SwiftUI

struct ContentView: View {
    @State private var tapCount = 0
    
    var body: some View {
        VStack {
            Text("\(tapCount)")
                .font(.largeTitle)
                .padding(.top, 100)
            Spacer()
            ButtonView(tapCount: $tapCount)
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
