//
//  TenthSlideModuleBuilder.swift
//  Viper
//
//  Created by Денис Холодков on 22.09.2022.
//

import UIKit

class TenthSlideModuleBuilder {
    static func build() -> TenthSlideViewController {
        let entity = TenthSlideEntity()
        let interactor = TenthSlideInteractor(entity: entity)
        let router = TenthSlideRouter()
        let presenter = TenthSlidePresenter(interactor: interactor, router: router)
        let viewController = TenthSlideViewController(presenter: presenter)
        presenter.view = viewController
        interactor.presenter = presenter
        router.presenter = presenter
        return viewController
    }
}
