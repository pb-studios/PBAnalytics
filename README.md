# PBAnalytics

A lightweight Analytics protocols.

## About

Read the post: [Design an Analytics or Event Tracking Manager in iOS Swift App](https://betterprogramming.pub/design-an-analytics-or-event-tracking-manager-for-an-ios-app-75979e7144ee)

[Building an enum-based analytics system in Swift](https://www.swiftbysundell.com/articles/building-an-enum-based-analytics-system-in-swift/)

[A modular analytics layer in Swift](https://www.lordcodes.com/articles/a-modular-analytics-layer-in-swift)

## Usage

### Implementing Events
You can use `@AnalyticsEvent` for creating events. You may wish to store all your user defaults in one place, however, that is not necessary. You can store the events either in struct or enum. 

```swift
struct AnalyticsEvents {
    enum Onboarding {
        @AnalyticsEvent(screen: ScreenName.onboarding.name, event: "Notif_Permission_Granted")
        static var notificationAccessGranted: AnalyticsEvent

        @AnalyticsEvent(screen: ScreenName.onboarding.name, event: "Notif_Permission_Denied")
        static var notificationAccessDenied: AnalyticsEvent

        static func continueTapped(at page: Int) -> AnalyticsEvent {
            return AnalyticsEvent(screen: ScreenName.onboarding.name, event: "Continue_Tap", clickValue: String(page))
        }
    }
}
```


### Implementing Logger

You need to create a logger class that implements  `AnalyticsEventsLoggerProtocol` . In this way you can abstract away third part libraries. 

See for further reading: [Why you should abstract any iOS third party libraries](https://benoitpasquier.com/abstract-ios-third-party-libraries/)

```swift
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
```


### Logging Events
You need to implement  `AnalyticsControllerProtocol` to log events.

```swift
class AnalyticsService: AnalyticsControllerProtocol {
    static let shared = AnalyticsController()
    var loggers: [AnalyticsEventsLoggerProtocol] = []

    private init() {}

    func start() {
        // Setup all the Analytics SDK
        let firebaseEventLogger = FirebaseEventLogger()
        loggers.append(firebaseEventLogger)
    }

    func trackEvent(_ event: AnalyticsEventProtocol,
                    params _: [String: Any] = [:]) {
        // add extra params to event
        // hit event from all tracking SDK's
        loggers.forEach { logger in
            logger.trackEvent(event: event)
        }
    }
}
```

## Supported Platforms

- iOS 12.0+
- tvOS 12.0+
- watchOS 5.0+
- macOS 10.13+

## Requirements

- Swift 5.3+
- Xcode 12.0+

## Installation

### [Swift Package Manager](https://swift.org/package-manager/)

```swift
dependencies: [
    .package(url: "git@github.com:pb-studios/PBAnalytics.git", from: "1.0.0")
]
```

Alternatively, you can add the package [directly via Xcode](https://developer.apple.com/documentation/xcode/adding_package_dependencies_to_your_app).

## License

Released under the MIT License. See `LICENSE` for details.

> **Copyright &copy; 2021 PB Studios.**
