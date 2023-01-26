//
//  GFButton.swift
//  CleanWay-GHFollowers
//
//  Created by Emir Alkal on 26.01.2023.
//

import UIKit

final class GFButton: UIButton {
  init(backgroundColor: UIColor, title: String) {
    super.init(frame: .zero)
    self.backgroundColor = backgroundColor
    setTitle(title, for: .normal)
    configure()
  }

  private func configure() {
    layer.cornerRadius = 12
    titleLabel?.font = .preferredFont(forTextStyle: .headline)
    setTitleColor(.white, for: .normal)
  }

  @available(*, unavailable)
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}
