//
//  AnalyticsControllerProtocol.swift
//  CalculatorVault
//
//  Created by HASAN CAN on 2/26/21.
//

import Foundation

// MARK: - AnalyticsServiceProtocol

public protocol AnalyticsServiceProtocol {
    func start()
    func trackEvent(_ event: AnalyticsEventProtocol)
    func setUserProperties(_ user: UserProfileProtocol)
    func setDefaultProperties(_ properties: [String: Any])
    func setDefaultProperty(_ value: Any, for key: String) 
    func clearDefaultProperties()
}

public extension AnalyticsServiceProtocol {
    func setUserProperties(_ user: UserProfileProtocol) {}
    func setDefaultProperties(_ properties: [String: Any]) {}
    func setDefaultProperty(_ value: Any, for key: String) {}
    func clearDefaultProperties() {}
}
