//
//  AppConfigurations.swift
//  CleanArchitecture_Clone
//
//  Created by JunHwan Kim on 2022/09/14.
//

import Foundation

final class AppConfiguration {
    lazy var apiKey: String = {
        guard let apiKey = Bundle.main.object(forInfoDictionaryKey: "ApiKey") as? String else {
            fatalError("ApiKey must not be empty in plist")
        }
        return apiKey
    }()
}
