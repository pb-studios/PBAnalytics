//
//  AnalyticsControllerProtocol.swift
//  CalculatorVault
//
//  Created by HASAN CAN on 2/26/21.
//

import Foundation

public protocol AnalyticsServiceProtocol {
    func setup()
    func trackEvent(_ event: AnalyticsEventProtocol, params: [String: Any])
}
