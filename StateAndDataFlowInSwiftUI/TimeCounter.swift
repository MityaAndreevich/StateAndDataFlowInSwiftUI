//
//  TimeCounter.swift
//  StateAndDataFlowInSwiftUI
//
//  Created by Dmitry Logachev on 04.11.2021.
//

import Foundation
import Combine

class TimeCounter: ObservableObject {
    let objectWillChange = PassthroughSubject<TimeCounter, Never>()
    var counter = 3
    var timer: Timer?
    
    func startTimer() {
        timer = Timer.scheduledTimer(
            timeInterval: 1,
            target: self,
            selector: #selector(updateCounter),
            userInfo: nil,
            repeats: true)
    }
    
    @objc private func updateCounter() {
        if counter > 0 {
            counter -= 1
        } else {
            killTimer()
        }
    }
    
    private func killTimer() {
        timer?.invalidate()
        timer = nil
    }
}
