//
//  SearchSceneView.swift
//  CleanWay-GHFollowers
//
//  Created by Emir Alkal on 26.01.2023.
//

import SnapKit
import UIKit

final class SearchSceneView: UIView {
  
  private var buttonBottomAnchor: NSLayoutConstraint?
  
  private let logoImageView: UIImageView = {
    let imageView = UIImageView()
    imageView.image = AppColor.appLogo
    return imageView
  }()
  
  private let textField: UITextField = {
    let textField = UITextField()
    textField.layer.cornerRadius = 10
    textField.layer.borderWidth = 2
    textField.layer.borderColor = UIColor.systemGray4.cgColor
    textField.textColor = .label
    textField.tintColor = .label
    textField.textAlignment = .center
    textField.font = .preferredFont(forTextStyle: .title2)
    textField.adjustsFontSizeToFitWidth = true
    textField.minimumFontSize = 12
    textField.backgroundColor = .tertiarySystemBackground
    textField.autocorrectionType = .no
    textField.placeholder = "Enter a username"
    textField.returnKeyType = .go
    textField.clearButtonMode = .whileEditing
    return textField
  }()
  
  private let actionButton = GFButton(backgroundColor: .systemGreen, title: "Get Followers")
  
  weak var delegate: SearchSceneDelegate?
  
  init() {
    super.init(frame: .zero)
    configure()
    layout()
  }
  
  private func configure() {
    backgroundColor = .systemBackground
    actionButton.addTarget(nil, action: #selector(handleActionButtonTapped), for: .touchUpInside)
  }
  
  @objc private func handleActionButtonTapped() {
    if !textField.text!.isEmpty {
      delegate?.didTapGetFollowers(with: textField.text!)
    } else {
      delegate?.didTapGetFollowersWithNoText()
    }
  }
  
  private func layout() {
    addSubviews(logoImageView, textField, actionButton)
    let padding: CGFloat = 50
    
    logoImageView.snp.makeConstraints { make in
      make.top.equalTo(safeAreaLayoutGuide.snp.top).offset(40)
      make.leading.equalToSuperview().offset(100)
      make.trailing.equalToSuperview().offset(-100)
      make.height.equalTo(logoImageView.snp.width)
    }

    textField.snp.makeConstraints { make in
      make.top.equalTo(logoImageView.snp.bottom).offset(isSmall ? 20 : 80)
      make.leading.equalToSuperview().offset(padding)
      make.trailing.equalToSuperview().offset(-padding)
      make.height.equalTo(55)
    }
    
    actionButton.snp.makeConstraints { make in
      make.leading.equalToSuperview().offset(padding)
      make.trailing.equalToSuperview().offset(-padding)
      make.height.equalTo(55)
    }
    
    buttonBottomAnchor = actionButton.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -40)
    buttonBottomAnchor?.isActive = true
  }

  func didVisibleKeyboard(_ keyboardHeight: CGFloat) {
    buttonBottomAnchor?.constant = -keyboardHeight + safeAreaInsets.bottom - 8
  }
  
  func didHiddenKeyboard() {
    buttonBottomAnchor?.constant = -40
  }
  
  @available(*, unavailable)
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}
