//
//  Follower.swift
//  CleanWay-GHFollowers
//
//  Created by Emir Alkal on 26.01.2023.
//

import Foundation

struct Follower: Decodable {
  let username: String
  let id: Int
  let avatarImageURL: String
  
  private enum CodingKeys: String, CodingKey {
    case username = "login"
    case id
    case avatarImageURL = "avatar_url"
  }
}
