//
//  TabBarItem.swift
//  SafeLoad
//
//  Created by 천성우 on 4/2/24.
//

import UIKit

enum TabBarItemType: Int, CaseIterable {
    case myLocation
    case news
    case myPage
}

extension TabBarItemType {
    
    var unSelectedIcon: UIImage {
        switch self {
        case .myLocation:
            return ImageLiterals.TabBar.myLocation_Off
        case .news:
            return ImageLiterals.TabBar.News_ic_Off
        case .myPage:
            return ImageLiterals.TabBar.myPage_ic_Off
        }
    }
    
    var selectedIcon: UIImage {
        switch self {
        case .myLocation:
            return ImageLiterals.TabBar.myLocation_On
        case .news:
            return ImageLiterals.TabBar.News_ic_On
        case .myPage:
            return ImageLiterals.TabBar.myPage_ic_On
        }
    }
    
    func setTabBarItem() -> UITabBarItem {
        return UITabBarItem(title: "", image: unSelectedIcon, selectedImage: selectedIcon)
    }
}
