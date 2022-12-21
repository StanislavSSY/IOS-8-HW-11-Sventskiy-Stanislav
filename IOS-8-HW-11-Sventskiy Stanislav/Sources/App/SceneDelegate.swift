//
//  SceneDelegate.swift
//  IOS-8-HW-11-Sventskiy Stanislav
//
//  Created by Stanislav Stanislav on 21.12.2022.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        let viewController = ViewController()
        window = UIWindow(windowScene: windowScene)
        window?.rootViewController = viewController
        window?.makeKeyAndVisible()
    }
}

 
