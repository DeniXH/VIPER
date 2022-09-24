//
//  TwelthSlideModuleBuilder.swift
//  Viper
//
//  Created by Денис Холодков on 22.09.2022.
//

import Foundation
import UIKit

class TwelthSlideModuleBuilder {
    static func build() -> TwelthSlideViewController {
        let entity = TwelthSlideEntity()
        let interactor = TwelthSlideInteractor(entity: entity)
        let router = TwelthSlideRouter()
        let presenter = TwelthSlidePresenter(interactor: interactor, router: router)
        let viewController = TwelthSlideViewController(presenter: presenter)
        presenter.view = viewController
        interactor.presenter = presenter
        router.presenter = presenter
        return viewController
    }
}
