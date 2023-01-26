//
//  UIView+.swift
//  CleanWay-GHFollowers
//
//  Created by Emir Alkal on 26.01.2023.
//

import UIKit

extension UIView {
  func addSubviews(_ subviews: UIView...) {
    subviews.forEach {
      addSubview($0)
    }
  }
}
