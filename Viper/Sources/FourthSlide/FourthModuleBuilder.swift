//
//  FourthModuleBuilder.swift
//  Viper
//
//  Created by Денис Холодков on 19.09.2022.
//

import Foundation
import UIKit

class FourthModuleBuilder {
    static func build() -> FourthViewController {
        let interactor = FourthInteractor()
        let router = FourthRouter()
        let presenter = FourthPresenter(interactor: interactor, router: router)
        let viewController = FourthViewController(presenter: presenter)
        presenter.view = viewController as? FourthViewProtocol
        interactor.presenter = presenter
        router.presenter = presenter
        return viewController
    }
}
