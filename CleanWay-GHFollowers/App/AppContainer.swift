//
//  AppContainer.swift
//  CleanWay-GHFollowers
//
//  Created by Emir Alkal on 26.01.2023.
//

import UIKit

let app = AppContainer()
let isSmall = UIScreen.main.bounds.size.height < 700 ? true : false

final class AppContainer {
  let router = AppRouter()
}
