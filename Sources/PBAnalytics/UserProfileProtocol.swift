//
//  UserProfileProtocol.swift
//  CalculatorVault
//
//  Created by HASAN CAN on 3/1/21.
//

import Foundation

public protocol UserProfileProtocol {
    var id: String { get set }
    var idfa: String? { get set }
    var device: String? { get set }
    var os: String? { get set }
    var country: String? { get set }
    var appVersion: String? { get set }
}
