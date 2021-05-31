//
//  AnalyticsEventLoggerProtocol.swift
//  CalculatorVault
//
//  Created by HASAN CAN on 2/26/21.
//

import Foundation

public protocol AnalyticsEventLoggerProtocol {
    func setUserProperties(user: UserProfileProtocol)
    func trackEvent(event: AnalyticsEventProtocol)
}
