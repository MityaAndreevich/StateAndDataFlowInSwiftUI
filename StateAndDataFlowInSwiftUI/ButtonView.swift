//
//  ButtonView.swift
//  StateAndDataFlowInSwiftUI
//
//  Created by Dmitry Logachev on 04.11.2021.
//

import SwiftUI

struct ButtonView: View {
    @Binding var tapCount: Int
    
    var body: some View {
        Button("Tap me") {
            tapCount += 1
        }
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView(tapCount: .constant(0))
    }
}

