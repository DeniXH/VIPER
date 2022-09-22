//
//  EleventhSlideModuleBuilder.swift
//  Viper
//
//  Created by Денис Холодков on 22.09.2022.
//

import Foundation
import UIKit

class EleventhSlideModuleBuilder {
    static func build() -> EleventhSlideViewController {
        let interactor = EleventhSlideInteractor()
        let router = EleventhSlideRouter()
        let presenter = EleventhSlidePresenter(interactor: interactor, router: router)
        let viewController = EleventhSlideViewController(presenter: presenter)
        presenter.view = viewController as? EleventhSlideViewProtocol
        interactor.presenter = presenter
        router.presenter = presenter
        return viewController
    }
}
