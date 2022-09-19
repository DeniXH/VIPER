//
//  SceneDelegate.swift
//  Viper
//
//  Created by Denis on 16.09.2022.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        let window = UIWindow(windowScene: windowScene)
        window.rootViewController = MainSlideModuleBuilder.build()
        self.window = window
        window.makeKeyAndVisible()
    }
}
