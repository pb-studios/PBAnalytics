//
//  AnalyticsEventLoggerProtocol.swift
//  CalculatorVault
//
//  Created by HASAN CAN on 2/26/21.
//

import Foundation

protocol AnalyticsEventsLoggerProtocol {
    func setUserProperties(user: UserProfileProtocol)
    func trackEvent(event: AnalyticsEventProtocol)
}
