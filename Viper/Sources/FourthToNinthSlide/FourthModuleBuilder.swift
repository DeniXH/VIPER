//
//  ThirdModuleBuilder.swift
//  Viper
//
//  Created by Денис Холодков on 18.09.2022.
//

import UIKit

class FourthModuleBuilder {
    static func build() -> FourthViewController {
        let entity = FourthSlideEntity()
        let interactor = FourthInteractor(entity: entity)
        let router = FourthRouter()
        let presenter = FourthPresenter(interactor: interactor, router: router)
        let viewController = FourthViewController(presenter: presenter)
        presenter.view = viewController as? FourthViewProtocol
        interactor.presenter = presenter
        router.presenter = presenter
        return viewController
    }
}
