//
//  ThirdModuleBuilder.swift
//  Viper
//
//  Created by Денис Холодков on 19.09.2022.
//

import Foundation
import UIKit

class ThirdModuleBuilder {
    static func build() -> ThirdViewController {
        let interactor = ThirdInteractor()
        let router = ThirdRouter()
        let presenter = ThirdPresenter(interactor: interactor, router: router)
        let viewController = ThirdViewController(presenter: presenter)
        presenter.view = viewController as? ThirdViewProtocol
        interactor.presenter = presenter
        router.presenter = presenter
        return viewController
    }
}
