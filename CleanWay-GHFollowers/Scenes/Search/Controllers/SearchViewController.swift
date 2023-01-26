//
//  SearchViewController.swift
//  CleanWay-GHFollowers
//
//  Created by Emir Alkal on 26.01.2023.
//

import UIKit

final class SearchViewController: UIViewController, AlertShowable {
  private var scene: SearchSceneView {
    view as! SearchSceneView
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    configure()
    NetworkManager.shared.fetch(Follower.self, for: "nsemirdev", endpoint: .user) { result in
      
    }
  }
  
  override func loadView() {
    super.loadView()
    view = SearchSceneView()
    scene.delegate = self
  }
  
  private func configure() {
    navigationController?.setNavigationBarHidden(true, animated: false)
    
    NotificationCenter.default.addObserver(self, selector: #selector(handleKeyboardVisible), name: UIResponder.keyboardWillShowNotification, object: nil)
    NotificationCenter.default.addObserver(self, selector: #selector(handleKeyboardHidden), name: UIResponder.keyboardWillHideNotification, object: nil)
    
    let tapGesture = UITapGestureRecognizer(target: view, action: #selector(UIView.endEditing(_:)))
    view.addGestureRecognizer(tapGesture)
  }
  
  @objc private func handleKeyboardHidden() {
    scene.didHiddenKeyboard()
  }
  
  @objc private func handleKeyboardVisible(_ notification: Notification) {
    if let keyboardFrame: NSValue = notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue {
      scene.didVisibleKeyboard(keyboardFrame.cgRectValue.height)
    }
  }
}

extension SearchViewController: SearchSceneDelegate {
  func didTapGetFollowersWithNoText() {
    presentGFAlert(title: "Error", body: "No username entered.")
  }
  
  func didTapGetFollowers(with username: String) {
    print(username)
  }
}
