//
//  AnalyticsEvent.swift
//  CalculatorVault
//
//  Created by HASAN CAN on 2/26/21.
//

import Foundation

// MARK: - AnalyticsEvent

@propertyWrapper
public struct AnalyticsEvent: AnalyticsEventProtocol {
    public var name: String
    public var params: [String: Any] = [:]

    public var wrappedValue: AnalyticsEvent {
        return AnalyticsEvent(
            name: name,
            params: params)
    }
}

public extension AnalyticsEvent {
    init(event: String) {
        self.init(name: event)
    }

    init(screen: String, event: String) {
        self.init(name: "\(screen)-\(event)")
    }

    init(event: String, params: [String: Any]) {
        self.init(name: "\(event)", params: params)
    }

    init(screen: String, event: String, params: [String: Any]) {
        self.init(name: "\(screen)-\(event)", params: params)
    }

    init(screen: String, button: String) {
        self.init(name: "\(screen)-\(button) Tapped")
    }

    init(screen: String, button: String, clickValue: String) {
        self.init(
            name: "\(screen)-\(button) Tapped-\(clickValue)",
            params: ["click_value": clickValue])
    }
}
