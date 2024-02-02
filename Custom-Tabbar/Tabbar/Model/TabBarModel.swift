//
//  TabBarModel.swift
//  Custom-Tabbar
//
//  Created by Kambiz on 2024-02-01.
//

import Foundation

enum TabBarOptionModel: Int, CaseIterable {
    case home
    case cart
    case favorite
    case settings
    
    var title: String {
        switch self {
        case .home:
            return "Home"
        case .cart:
            return "Cart"
        case .favorite:
            return "Favortie"
        case .settings:
            return "Setting"
        }
    }
    
    var systemImageName: String {
        switch self {
        case .home:
            return "Home"
        case .cart:
            return "Cart"
        case .favorite:
            return "Favorite"
        case .settings:
            return "Settings"
        }
    }
}

extension TabBarOptionModel: Identifiable, Hashable {
    var id: Int { return self.rawValue }
}
