//
//  AnalyticsController.swift
//  CalculatorVault
//
//  Created by HASAN CAN on 2/26/21.
//

import Foundation

class AnalyticsService: AnalyticsServiceProtocol {
    static let shared: AnalyticsService = {
        AnalyticsService()
    }()

    var loggers: [AnalyticsEventLoggerProtocol] = []

    private init() {}

    func start() {
        // Setup all the Analytics SDK
        let firebaseEventLogger = FirebaseEventLogger()
        loggers.append(firebaseEventLogger)
    }

    func trackEvent(
        _ event: AnalyticsEventProtocol) {
        // hit event from all tracking SDK's
        loggers.forEach { logger in
            logger.trackEvent(event: event)
        }
    }
}
