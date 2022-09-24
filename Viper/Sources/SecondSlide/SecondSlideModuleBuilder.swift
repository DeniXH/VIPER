//
//  ModuleBuilder.swift
//  Viper
//
//  Created by Денис Холодков on 18.09.2022.
//

import UIKit

class SecondSlideModuleBuilder {
    static func build() -> SecondSlideViewController {
        let entity = SecondSlideEntity()
        let interactor = SecondSlideInteractor(entity: entity)
        let router = SecondSlideRouter()
        let presenter = SecondSlidePresenter(interactor: interactor, router: router)
        let viewController = SecondSlideViewController(presenter: presenter)
        presenter.view = viewController
        interactor.presenter = presenter
        router.presenter = presenter
        return viewController
    }
}
