//
//  User.swift
//  CleanWay-GHFollowers
//
//  Created by Emir Alkal on 26.01.2023.
//

import Foundation

struct User: Decodable {
  let username: String
  let id: Int
  let avatarImageURL: String
  let htmlURL: String
  let publicRepos: Int
  let publicGists: Int
  let followers: Int
  let following: Int
  let createdAt: Date
  let location: String?
  let name: String?
  let bio: String?

  private enum CodingKeys: String, CodingKey {
    case username = "login"
    case id
    case avatarImageURL = "avatar_url"
    case htmlURL = "html_url"
    case publicRepos = "public_repos"
    case publicGists = "public_gists"
    case followers
    case following
    case createdAt = "created_at"
    case location
    case name
    case bio
  }
}
