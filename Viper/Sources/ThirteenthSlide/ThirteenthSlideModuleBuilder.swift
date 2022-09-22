//
//  ThirteenthSlideModuleBuilder.swift
//  Viper
//
//  Created by Денис Холодков on 22.09.2022.
//

import Foundation
import UIKit

class ThirteenthSlideModuleBuilder {
    static func build() -> ThirteenthSlideViewController {
        let interactor = ThirteenthSlideInteractor()
        let router = ThirteenthSlideRouter()
        let presenter = ThirteenthSlidePresenter(interactor: interactor, router: router)
        let viewController = ThirteenthSlideViewController(presenter: presenter)
        presenter.view = viewController as? ThirteenthSlideViewProtocol
        interactor.presenter = presenter
        router.presenter = presenter
        return viewController
    }
}
