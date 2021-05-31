//
//  FirebaseEventLogger.swift
//  CalculatorVault
//
//  Created by HASAN CAN on 2/26/21.
//

import FirebaseAnalytics

class FirebaseEventLogger: AnalyticsEventsLoggerProtocol {
    public init() {}

    func setUserProperties(user _: UserProfileProtocol) {
        // init SDK and set user properties
    }

    func trackEvent(event: AnalyticsEventProtocol) {
        // add implementation of tracking events
        Analytics.logEvent(event.name, parameters: event.params)
    }
}
