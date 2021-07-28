//
//  AnalyticsEvents.swift
//  CalculatorVault
//
//  Created by HASAN CAN on 3/3/21.
//

import Foundation

// MARK: - AnalyticsEvents

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

    enum Photos {
        @AnalyticsEvent(screen: ScreenName.photos.name, event: "Library_Permission_Granted")
        static var libraryAccessGranted: AnalyticsEvent

        @AnalyticsEvent(screen: ScreenName.photos.name, event: "Library_Permission_Denied")
        static var libraryAccessDenied: AnalyticsEvent

        @AnalyticsEvent(screen: ScreenName.photos.name, button: "Hide_New")
        static var hideNewPhotoTapped: AnalyticsEvent

        @AnalyticsEvent(screen: ScreenName.photos.name, button: "Detail")
        static var photoDetailTapped: AnalyticsEvent
    }

    enum Settings {
        @AnalyticsEvent(screen: ScreenName.settings.name, button: "Change_Passcode")
        static var changePasscodeTapped: AnalyticsEvent

        @AnalyticsEvent(screen: ScreenName.settings.name, button: "Manage_Subs")
        static var manageSubsTapped: AnalyticsEvent

        @AnalyticsEvent(screen: ScreenName.settings.name, button: "Rate_Us")
        static var rateUsTapped: AnalyticsEvent

        @AnalyticsEvent(screen: ScreenName.settings.name, button: "Share_App")
        static var shareAppTapped: AnalyticsEvent
    }

    enum Rating {
        @AnalyticsEvent(screen: ScreenName.rating.name, button: "Enjoying_Yes")
        static var enjoyingYesTapped: AnalyticsEvent

        @AnalyticsEvent(screen: ScreenName.rating.name, button: "Enjoying_Not_Really")
        static var enjoyingNotReally: AnalyticsEvent

        @AnalyticsEvent(screen: ScreenName.rating.name, button: "Not_Now")
        static var notNowTapped: AnalyticsEvent

        @AnalyticsEvent(screen: ScreenName.rating.name, button: "Give_Feedback")
        static var feedbackTapped: AnalyticsEvent
    }

    enum PurchaseView {
        @AnalyticsEvent(screen: ScreenName.purchaseView.name, button: "Continue")
        static var defaultContinueTapped: AnalyticsEvent

        @AnalyticsEvent(screen: ScreenName.purchaseView.name, button: "Cancel")
        static var defaultCancelTapped: AnalyticsEvent

        @AnalyticsEvent(screen: ScreenName.purchaseView.name, event: "Purchase_Cancelled")
        static var defaultPurchaseCancelled: AnalyticsEvent

        @AnalyticsEvent(screen: ScreenName.purchaseView.name, event: "Purchase_Successful")
        static var defaultPurchaseSuccessful: AnalyticsEvent
    }

    enum Purchase {
        @AnalyticsEvent(event: "Purchase_Canceled")
        static var purchaseCancelled: AnalyticsEvent

        @AnalyticsEvent(event: "Purchase_Successful")
        static var purchaseSuccessful: AnalyticsEvent

        static func checkoutInitiated(productId: String) -> AnalyticsEvent {
            return AnalyticsEvent(name: "Checkout_Initiated", params: ["product_id": productId])
        }
    }

    enum CancelSubs {
        @AnalyticsEvent(screen: ScreenName.cancelSubs.name, button: "Back")
        static var backButtonTapped: AnalyticsEvent

        static func choiceTapped(at choice: Int) -> AnalyticsEvent {
            return AnalyticsEvent(screen: ScreenName.cancelSubs.name, event: "Choice_Tapped", clickValue: String(choice))
        }
    }
}

// MARK: - ScreenName

enum ScreenName {
    case onboarding, photos, settings, rating, purchaseView, cancelSubs

    var name: String {
        switch self {
        case .onboarding:
            return "Onboarding"
        case .photos:
            return "Photos"
        case .settings:
            return "Settings"
        case .rating:
            return "Rating"
        case .purchaseView:
            return "PS"
        case .cancelSubs:
            return "CancelSubs"
        }
    }
}

// MARK: - AnalyticsParameter

enum ParameterName {
    case screen, clickTarget

    var name: String {
        switch self {
        case .screen:
            return "screen_name"
        case .clickTarget:
            return "clicked_at"
        }
    }
}
