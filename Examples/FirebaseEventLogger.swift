//
//  FirebaseEventLogger.swift
//  CalculatorVault
//
//  Created by HASAN CAN on 2/26/21.
//

import FirebaseAnalytics

class FirebaseEventLogger: AnalyticsEventsLoggerProtocol {
    public init() {
        // init SDK
    }

    func setUserProperties(_ user: UserProfileProtocol) {
        // set user properties
    }

    func setDefaultProperties(_ properties: [String: Any]) {
        // set default properties
    }

    func trackEvent(event: AnalyticsEventProtocol) {
        // add implementation of tracking events
        Analytics.logEvent(event.name, parameters: event.params)
    }
}
