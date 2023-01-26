//
//  NetworkManager.swift
//  CleanWay-GHFollowers
//
//  Created by Emir Alkal on 26.01.2023.
//

import Foundation

final class NetworkManager {
  static let shared = NetworkManager()
  private init() {}
  // https://api.github.com/users/nsemirdev/followers     -> For getting a followers list
  
  // https://api.github.com/users/nsemirdev               -> For getting a single user
  
  enum Endpoint {
    case user
    case followerList(page: Int)
  }
  
  private let baseURL = "https://api.github.com/users/"
 
  func fetch<T: Decodable>(_ type: T.Type, for name: String, endpoint: Endpoint, completion: @escaping (Result<T, Error>) -> Void) {
    switch endpoint {
    case .user:
      let urlString = baseURL + name
      guard let url = URL(string: urlString) else {
        return
      }
    case .followerList(let page):
      print("requesting for user \(name) and page for \(page)")
    }
  }
}
