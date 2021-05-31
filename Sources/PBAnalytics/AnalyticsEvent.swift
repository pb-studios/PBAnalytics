//
//  AnalyticsEvent.swift
//  CalculatorVault
//
//  Created by HASAN CAN on 2/26/21.
//

import Foundation

@propertyWrapper
public struct AnalyticsEvent: AnalyticsEventProtocol {
    public var name: String
    public var params: [String: Any] = [:]

    public var wrappedValue: AnalyticsEvent {
        return AnalyticsEvent(name: name,
                              params: params)
    }
}

public extension AnalyticsEvent {
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
