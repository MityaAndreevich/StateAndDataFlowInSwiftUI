//
//  UserManager.swift
//  StateAndDataFlowInSwiftUI
//
//  Created by Dmitry Logachev on 05.11.2021.
//

import Combine

final class UserManager: ObservableObject {
    @Published var isRegistered = false
    var name = ""
}
