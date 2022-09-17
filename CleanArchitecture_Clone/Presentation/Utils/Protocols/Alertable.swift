//
//  Alertable.swift
//  CleanArchitecture_Clone
//
//  Created by JunHwan Kim on 2022/09/15.
//

import Foundation
import UIKit

protocol Alertable {}

extension Alertable where Self: UIViewController {
    func showAlert(title: String = "", message: String, preferresStyle: UIAlertController.Style = .alert, completion: (() -> Void)? = nil ) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: preferresStyle)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        self.present(alert, animated: true, completion: completion)
    }
}
