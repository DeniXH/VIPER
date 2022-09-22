//
//  TenthSlideModuleBuilder.swift
//  Viper
//
//  Created by Денис Холодков on 22.09.2022.
//

import UIKit

class TenthSlideModuleBuilder {
    static func build() -> TenthSlideViewController {
        let interactor = TenthSlideInteractor()
        let router = TenthSlideRouter()
        let presenter = TenthSlidePresenter(interactor: interactor, router: router)
        let viewController = TenthSlideViewController(presenter: presenter)
        presenter.view = viewController as? TenthSlideViewProtocol
        interactor.presenter = presenter
        router.presenter = presenter
        return viewController
    }
}
