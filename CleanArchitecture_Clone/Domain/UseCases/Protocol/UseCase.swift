//
//  UseCase.swift
//  CleanArchitecture_Clone
//
//  Created by JunHwan Kim on 2022/09/17.
//

import Foundation

public protocol UseCase {
    func start() -> Cancellable?
}
