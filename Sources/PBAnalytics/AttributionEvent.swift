//
//  AttributionEvent.swift
//
//
//  Created by Hasan Can Aslan on 27.10.2021.
//

import Foundation

@propertyWrapper
public struct AttributionEvent: AnalyticsEventProtocol {
    public var name: String
    public var params: [String: Any] = [:]

    public var wrappedValue: AnalyticsEvent {
        return AnalyticsEvent(
            name: name,
            params: params)
    }
}

public extension AttributionEvent {
    init(event: String) {
        self.init(name: event)
    }

    init(event: String, params: [String: Any]) {
        self.init(name: "\(event)", params: params)
    }
}
