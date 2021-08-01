//
//  AnalyticsEventLoggerProtocol.swift
//  CalculatorVault
//
//  Created by HASAN CAN on 2/26/21.
//

import Foundation

// MARK: - AnalyticsEventLoggerProtocol

public protocol AnalyticsEventLoggerProtocol {
    func setUserProperties(user: UserProfileProtocol)
    func trackEvent(event: AnalyticsEventProtocol)
    func setDefaultProperties(properties: [String: Any])
    func clearDefaultProperties()
}

public extension AnalyticsEventLoggerProtocol {
    func setUserProperties(user: UserProfileProtocol) {}
    func setDefaultProperties(properties: [String: Any]) {}
    func clearDefaultProperties() {}
}
