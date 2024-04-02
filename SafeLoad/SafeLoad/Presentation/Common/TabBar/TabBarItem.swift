//
//  TabBarItem.swift
//  SafeLoad
//
//  Created by 천성우 on 4/2/24.
//

import UIKit

enum TabBarItemType: Int, CaseIterable {
    case home
    case actionList
    case myPage
}

extension TabBarItemType {
    
    var unSelectedIcon: UIImage {
        switch self {
        case .home:
            return ImageLiterals.TabBar.home
        case .actionList:
            return ImageLiterals.TabBar.actionList
        case .myPage:
            return ImageLiterals.TabBar.mypage
        }
    }
    
    var selectedIcon: UIImage {
        switch self {
        case .home:
            return ImageLiterals.TabBar.selected_home
        case .actionList:
            return ImageLiterals.TabBar.selected_actionList
        case .myPage:
            return ImageLiterals.TabBar.selected_mypage
        }
    }
    
    func setTabBarItem() -> UITabBarItem {
        return UITabBarItem(title: "", image: unSelectedIcon, selectedImage: selectedIcon)
    }
}
