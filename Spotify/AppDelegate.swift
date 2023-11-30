//
// 
// FileName: AppDelegate.swift
// ProjectName: Spotify
//
// Created by MD ABIR HOSSAIN on 29-11-2023 at 11:52 PM
// Website: https://mdabirhossain.com/
//


import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.backgroundColor = .white
        window?.makeKeyAndVisible()
        
        let navigationController = UINavigationController(rootViewController: TitlebarController())
        window?.rootViewController = navigationController
        
        return true
    }
    
}

