//
// 📰 🐸
// Project: RSSchool_T9
//
// Author: Uladzislau Volchyk
// On: 23.07.21
//
// Copyright © 2021 RSSchool. All rights reserved.

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        let window = UIWindow()
        window.rootViewController = rootViewContronner()
        self.window = window
        self.window?.makeKeyAndVisible()
        return true
    }
    
    func rootViewContronner() -> UIViewController {
        let tabBarController = UITabBarController()
        var tabBarControllers: [UIViewController] = []
        let collectionViewController = CollectionViewController()
        collectionViewController.tabBarItem = UITabBarItem(title: "Items", image: .init(systemName: "square.grid.2x2"), selectedImage: nil)
        let navigationController = UINavigationController()
        let settingsModuleViewController = SettingsModuleViewController()
        navigationController.tabBarItem = UITabBarItem(title: "Settings", image: .init(systemName: "gear"), selectedImage: nil)
        navigationController.addChild(settingsModuleViewController)
        tabBarControllers.append(collectionViewController)
        tabBarControllers.append(navigationController)
        tabBarController.viewControllers = tabBarControllers
        return tabBarController
    }


}

