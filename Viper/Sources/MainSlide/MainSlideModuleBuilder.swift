//
//  ModuleBuilder.swift
//  Viper
//
//  Created by Denis on 16.09.2022.
//

import UIKit

class MainSlideModuleBuilder {
    static func build() -> MainSlideViewController {
        let entity = MainSlideEntity()
        let interactor = MainSlideInteractor(entity: entity)
        let router = MainSlideRouter()
        let presenter = MainSlidePresenter(interactor: interactor, router: router)
        let viewController = MainSlideViewController(presenter: presenter)
        presenter.view = viewController
        interactor.presenter = presenter
        router.presenter = presenter
        return viewController
    }
}
