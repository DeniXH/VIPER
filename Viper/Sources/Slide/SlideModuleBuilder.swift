//
//  ModuleBuilder.swift
//  Viper
//
//  Created by Денис Холодков on 18.09.2022.
//

import UIKit

class SlideModuleBuilder {
    static func build() -> SlideViewController {
        let interactor = SlideInteractor()
        let router = SlideRouter()
        let presenter = SlidePresenter(interactor: interactor, router: router)
        let viewController = SlideViewController(presenter: presenter)
        presenter.view = viewController as? SlideViewProtocol
        interactor.presenter = presenter
        router.presenter = presenter
        return viewController
    }
}
