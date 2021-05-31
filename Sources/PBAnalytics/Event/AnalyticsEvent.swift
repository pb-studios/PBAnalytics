//
//  AnalyticsEvent.swift
//  CalculatorVault
//
//  Created by HASAN CAN on 2/26/21.
//

import Foundation

@propertyWrapper
struct AnalyticsEvent: AnalyticsEventProtocol {
    var name: String
    var params: [String: Any] = [:]

    var wrappedValue: AnalyticsEvent {
        return AnalyticsEvent(name: name,
                              params: params)
    }
}

extension AnalyticsEvent {
    init(event: String) {
        self.init(name: event)
    }

    init(screen: String, event: String) {
        self.init(name: "\(screen)_\(event)")
    }

    init(screen: String, button: String) {
        self.init(name: "\(screen)_\(button)_Tapped")
    }
}
