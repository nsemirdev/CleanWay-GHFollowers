//
//  AppRouter.swift
//  CleanWay-GHFollowers
//
//  Created by Emir Alkal on 26.01.2023.
//

import UIKit

final class AppRouter {
  var window: UIWindow?
  
  func start(_ windowScene: UIWindowScene) {
    window = UIWindow(windowScene: windowScene)
    window?.makeKeyAndVisible()
    window?.rootViewController = MainTabBarController()
  }
}
