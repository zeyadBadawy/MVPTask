//
//  AppDelegate.swift
//  MVPTask
//
//  Created by zeyad on 9/17/20.
//  Copyright © 2020 zeyad. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = MainVC()
        window?.makeKeyAndVisible()
        return true
    }
}

