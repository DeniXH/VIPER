//
//  ModuleBuilder.swift
//  Viper
//
//  Created by Denis on 16.09.2022.
//

import UIKit

class ModuleBuilder {
    static func build() -> ViewController {
        let interactor = Interactor()
        let router = Router()
        let presenter = Presenter(interactor: interactor, router: router)
        let viewController = ViewController(presenter: presenter)
        presenter.view = viewController as? ViewProtocol
        interactor.presenter = presenter
        router.presenter = presenter
        return viewController
    }
}

