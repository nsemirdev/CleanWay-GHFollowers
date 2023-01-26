//
//  MainTabBarController.swift
//  CleanWay-GHFollowers
//
//  Created by Emir Alkal on 26.01.2023.
//

import UIKit

final class MainTabBarController: UITabBarController {
  override func viewDidLoad() {
    super.viewDidLoad()
    setUpAppearance()
    setUpViewControllers()
  }
  
  private func setUpAppearance() {
    let appearance = UITabBarAppearance()
    appearance.configureWithOpaqueBackground()
    
    UITabBar.appearance().standardAppearance = appearance
    UITabBar.appearance().scrollEdgeAppearance = appearance
    UITabBar.appearance().tintColor = .systemGreen
  }
  
  private func setUpViewControllers() {
    let searchVC = SearchViewController()
    searchVC.title = "Search"
    searchVC.tabBarItem = UITabBarItem(tabBarSystemItem: .search, tag: 0)

    let favoritesVC = FavoritesViewController()
    favoritesVC.title = "Favorites"
    favoritesVC.tabBarItem = UITabBarItem(tabBarSystemItem: .favorites, tag: 1)
    
    viewControllers = [
      UINavigationController(rootViewController: searchVC),
      UINavigationController(rootViewController: favoritesVC)
    ]
  }
}
