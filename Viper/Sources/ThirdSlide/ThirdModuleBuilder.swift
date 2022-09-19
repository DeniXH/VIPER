//
//  ThirdModuleBuilder.swift
//  Viper
//
//  Created by Денис Холодков on 18.09.2022.
//

import UIKit

class ThirdModuleBuilder {
    static func build() -> ThirdViewController {
        let interactor = ThirdInteractor()
        let router = ThirdRouter()
        let presenter = ThirdPresenter(interactor: interactor, router: router)
        let viewController = ThirdViewController(presenter: presenter)
        presenter.view = viewController as? ThirdViewProtocol
        interactor.presenter = presenter
        router.presenter = presenter
        return viewController
    }
}
