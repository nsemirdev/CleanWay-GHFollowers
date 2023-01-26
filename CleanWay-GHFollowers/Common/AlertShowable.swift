//
//  AlertShowable.swift
//  CleanWay-GHFollowers
//
//  Created by Emir Alkal on 26.01.2023.
//

import UIKit

protocol AlertShowable where Self: UIViewController {
  func presentGFAlert(title: String, body: String, buttonTitle: String)
}

extension AlertShowable {
  func presentGFAlert(title: String, body: String, buttonTitle: String = "Ok") {
    DispatchQueue.main.async {
      let alert = GFAlertViewController(alertTitle: title, message: body, buttonTitle: buttonTitle)
      alert.modalPresentationStyle = .overFullScreen
      alert.modalTransitionStyle = .crossDissolve
      self.present(alert, animated: true)
    }
  }
}
