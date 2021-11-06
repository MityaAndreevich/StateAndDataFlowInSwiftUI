//
//  TextCounter.swift
//  StateAndDataFlowInSwiftUI
//
//  Created by Dmitry Logachev on 05.11.2021.
//

import SwiftUI
import Combine


class TextCounter: ObservableObject {
    @Published var counted = "0"
    @Published var text = "" {
        didSet {
            counted = String(text.count)
        }
    }
}


struct TextCounterTestView: View {
    @ObservedObject var textCountMgr = TextCounter()
    
    var body: some View {
        VStack {
            VStack {
                TextField("Placeholder", text: $textCountMgr.text)
            }
            .padding(.all)
            .background(Color.blue)
            .foregroundColor(.white)
            
            VStack {
                Text("\(textCountMgr.counted)")
            }
        }
    }
}

struct TextCounterTestView_Previews: PreviewProvider {
    static var previews: some View {
        TextCounterTestView()
    }
}
