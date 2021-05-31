//
//  AnalyticsController.swift
//  CalculatorVault
//
//  Created by HASAN CAN on 2/26/21.
//

import Foundation

class AnalyticsService: AnalyticsControllerProtocol {
    static let shared = AnalyticsController()
    var loggers: [AnalyticsEventsLoggerProtocol] = []

    private init() {}

    func setup() {
        // Setup all the Analytics SDK
        let firebaseEventLogger = FirebaseEventLogger()
        loggers.append(firebaseEventLogger)
    }

    func trackEvent(_ event: AnalyticsEventProtocol,
                    params _: [String: Any] = [:])
    {
        // add extra params to event
        // hit event from all tracking SDK's
        loggers.forEach { logger in
            logger.trackEvent(event: event)
        }
    }
}
