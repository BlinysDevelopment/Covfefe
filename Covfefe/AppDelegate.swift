//
//  AppDelegate.swift
//  Covfefe
//
//  Created by Nikita Makarov on 1/23/18.
//  Copyright © 2018 Nikita Makarov. All rights reserved.
//

import UIKit
import RealmSwift

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        populateDatabaseIfNeeded()
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) { }

    func applicationDidEnterBackground(_ application: UIApplication) { }

    func applicationWillEnterForeground(_ application: UIApplication) { }

    func applicationDidBecomeActive(_ application: UIApplication) { }

    func applicationWillTerminate(_ application: UIApplication) { }
    
    private func populateDatabaseIfNeeded() {
        let userDefaults = UserDefaults.standard
        let key = "realm_ready"
        if !userDefaults.bool(forKey: key) {
            DatabasePopulator().populate()
            userDefaults.set(true, forKey: key)
        }
        else {
            
        }
    }
}
