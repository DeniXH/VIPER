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
        let entity = EleventhSlideEntity()
        let interactor = EleventhSlideInteractor(entity: entity)
        let router = EleventhSlideRouter()
        let presenter = EleventhSlidePresenter(interactor: interactor, router: router)
        let viewController = EleventhSlideViewController(presenter: presenter)
        presenter.view = viewController
        interactor.presenter = presenter
        router.presenter = presenter
        return viewController
    }
}
