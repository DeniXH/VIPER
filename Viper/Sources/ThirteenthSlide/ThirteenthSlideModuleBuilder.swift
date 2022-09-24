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
        let entity = ThirteenthSlideEntity()
        let interactor = ThirteenthSlideInteractor(entity: entity)
        let router = ThirteenthSlideRouter()
        let presenter = ThirteenthSlidePresenter(interactor: interactor, router: router)
        let viewController = ThirteenthSlideViewController(presenter: presenter)
        presenter.view = viewController
        interactor.presenter = presenter
        router.presenter = presenter
        return viewController
    }
}
