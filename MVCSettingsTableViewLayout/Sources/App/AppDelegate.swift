//
//  AppDelegate.swift
//  MVCSettingsTableViewLayout
//
//  Created by Ilya Volkov on 04.04.2022.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window?.rootViewController = UINavigationController(rootViewController: SettingsController())
        window?.makeKeyAndVisible()
        
        return true
    }
}

