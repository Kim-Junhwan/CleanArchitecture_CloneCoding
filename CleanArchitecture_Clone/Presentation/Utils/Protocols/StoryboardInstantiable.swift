//
//  StoryboardInstantiable.swift
//  CleanArchitecture_Clone
//
//  Created by JunHwan Kim on 2022/09/15.
//

import Foundation
import UIKit

protocol StoryboardInstantiable {
    associatedtype T
    var defaultFileName: String { get }
    func instantiateViewController(_ bundle: Bundle?) -> T
}

extension StoryboardInstantiable where Self: UIViewController {
    var defaultFileName: String {
        return NSStringFromClass(Self.self).components(separatedBy: ".").last!
    }
    
    func instantiateViewController(_ bundle: Bundle? = nil) -> Self {
        let fileName = defaultFileName
        let storyboard = UIStoryboard(name: fileName, bundle: bundle)
        guard let vc = storyboard.instantiateInitialViewController() as? Self else {
            fatalError("cannot instantiate inital view controller \(Self.self) from storyboard with name \(fileName)")
        }
        return vc
    }
}

