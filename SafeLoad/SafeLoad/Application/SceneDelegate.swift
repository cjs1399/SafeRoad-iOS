//
//  SceneDelegate.swift
//  SafeLoad
//
//  Created by 천성우 on 4/1/24.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    
    var window: UIWindow?
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        window = UIWindow(windowScene: windowScene)
        let naviVC = UINavigationController(rootViewController: TabBarController())
        
        window?.rootViewController = naviVC
        window?.makeKeyAndVisible()
    }
}
