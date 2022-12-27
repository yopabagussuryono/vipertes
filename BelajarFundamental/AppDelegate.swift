//
//  AppDelegate.swift
//  BelajarFundamental
//
//  Created by yopa bagus on 19/11/22.
//

import UIKit


@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
   

    func application (_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        
        let routerLogin = RouterLogin.start()
        let initialVC = (routerLogin.entry)!
    
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
        window?.backgroundColor = .white
        let navControl = UINavigationController(rootViewController: initialVC)
        window?.rootViewController = navControl
//    let mainV = LoginView(nibName: "LoginView", bundle: nil)
//    let navControl = UINavigationController(rootViewController: mainV)
//    window?.rootViewController = navControl

//    self.window?.rootViewController = LoginView()


    return true

    }
}

