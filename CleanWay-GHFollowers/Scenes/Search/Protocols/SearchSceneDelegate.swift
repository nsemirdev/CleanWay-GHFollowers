//
//  SearchSceneDelegate.swift
//  CleanWay-GHFollowers
//
//  Created by Emir Alkal on 26.01.2023.
//

import Foundation

protocol SearchSceneDelegate: AnyObject {
  func didTapGetFollowers(with username: String)
  func didTapGetFollowersWithNoText()
}
