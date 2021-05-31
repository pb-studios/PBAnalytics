//
//  AnalyticsEventProtocol.swift
//  CalculatorVault
//
//  Created by HASAN CAN on 2/26/21.
//

import Foundation

protocol AnalyticsEventProtocol {
    var name: String { get set }
    var params: [String: Any] { get set }
}
