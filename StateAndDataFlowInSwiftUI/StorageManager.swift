//
//  StorageManager.swift
//  StateAndDataFlowInSwiftUI
//
//  Created by Dmitry Logachev on 06.11.2021.
//

import Combine
import SwiftUI

final class StorageManager: ObservableObject {
    @AppStorage("Registration") var isRegistered = false
    @AppStorage("name") var name = ""
}
