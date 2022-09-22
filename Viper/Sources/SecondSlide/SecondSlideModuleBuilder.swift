//
//  ModuleBuilder.swift
//  Viper
//
//  Created by Денис Холодков on 18.09.2022.
//

import UIKit

class SecondSlideModuleBuilder {
    static func build() -> SecondSlideViewController {
        let interactor = SecondSlideInteractor()
        let router = SecondSlideRouter()
        let presenter = SecondSlidePresenter(interactor: interactor, router: router)
        let viewController = SecondSlideViewController(presenter: presenter)
        presenter.view = viewController as? SecondSlideViewProtocol
        interactor.presenter = presenter
        router.presenter = presenter
        return viewController
    }
}
