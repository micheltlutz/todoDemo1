//
//  AppDelegate.swift
//  iPhoneApp
//
//  Created by Michel Anderson Lutz Teixeira on 18/08/2018.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        AppManager.shared.show(in: UIWindow(frame: UIScreen.main.bounds))
        
        return true
    }
}

