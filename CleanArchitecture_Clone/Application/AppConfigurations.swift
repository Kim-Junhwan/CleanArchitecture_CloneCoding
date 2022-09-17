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
    
    lazy var apiBaseURL: String = {
        guard let apiBaseUrl = Bundle.main.object(forInfoDictionaryKey: "ApiBaseURL") as? String else {
            fatalError("ApiBaseURL must not be empty in plist")
        }
        return apiBaseUrl
    }()
    
    lazy var imagesBaseURL: String = {
        guard let imageBaseUrl = Bundle.main.object(forInfoDictionaryKey: "ImageBaseURL") as? String else {
            fatalError("ImageBaseUrl must not be empty in plist")
        }
        return imageBaseUrl
    }()
}
