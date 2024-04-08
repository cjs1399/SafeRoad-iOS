//
//  TabBarController.swift
//  SafeLoad
//
//  Created by 천성우 on 4/2/24.
//

import UIKit

final class TabBarController: UITabBarController {
    
    // MARK: - Properties
    
    private let tabBarHeight: CGFloat = SizeLiterals.Screen.screenHeight * 74 / 812
    private var tabs: [UIViewController] = []
    private var tabBarItemTopInsets = SizeLiterals.Screen.screenHeight * 11 / 812
    
    // MARK: - View Life Cycle
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.isNavigationBarHidden = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setTabBarItems()
        setTabBarUI()
        setTabBarHeight()
    }
}

private extension TabBarController {
    
    func setTabBarItems() {
        
        let myLocationVC = UINavigationController(rootViewController: UIViewController())
        let newsVC = UINavigationController(rootViewController: UIViewController())
        let myPageVC = UINavigationController(rootViewController: UIViewController())
        
        tabs = [
            myLocationVC,
            newsVC,
            myPageVC
        ]
        
        TabBarItemType.allCases.forEach {
            let tabBarItem = $0.setTabBarItem()
            tabBarItem.imageInsets = UIEdgeInsets(top: tabBarItemTopInsets, left: 0, bottom: 0, right: 0)
            tabs[$0.rawValue].tabBarItem = tabBarItem
            tabs[$0.rawValue].tabBarItem.tag = $0.rawValue
        }
        
        setViewControllers(tabs, animated: false)
        
    }
    
    func setTabBarUI() {
        UITabBar.clearShadow()
        tabBar.backgroundColor = .gray800
        tabBar.tintColor = .green
        tabBar.layer.masksToBounds = false
        tabBar.layer.shadowColor = UIColor.gray.cgColor
        tabBar.layer.shadowOpacity = 1
        tabBar.layer.shadowOffset = CGSize(width: 0, height: 0)
        tabBar.layer.shadowRadius = 1
    }
    
    func getSafeAreaBottomHeight() -> CGFloat {
        if let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene {
            let safeAreaInsets = windowScene.windows.first?.safeAreaInsets
            let bottomSafeAreaHeight = safeAreaInsets?.bottom ?? 0
            return bottomSafeAreaHeight
        }
        return 0
    }
    
    func setTabBarHeight() {
        if let tabBar = self.tabBarController?.tabBar {
            let safeAreaBottomInset = self.view.safeAreaInsets.bottom
            let tabBarHeight = tabBar.bounds.height
            let newTabBarFrame = CGRect(x: tabBar.frame.origin.x, y: tabBar.frame.origin.y, width: tabBar.frame.width, height: tabBarHeight + safeAreaBottomInset)
            tabBar.frame = newTabBarFrame
        }
    }
}
