//
//  EleventhSlideRouter.swift
//  Viper
//
//  Created by Денис Холодков on 22.09.2022.
//

import UIKit

// MARK: - RouterProtocol

protocol EleventhSlideRouterProtocol: AnyObject {
    func openNextModule(view: UIViewController)
}

// MARK: Router

final class EleventhSlideRouter {
    weak var presenter: EleventhSlidePresenterProtocol?
}

// MARK: - Extension

extension EleventhSlideRouter: EleventhSlideRouterProtocol {
    
    // MARK: - Module Builder
    
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
    
    // MARK: - Next Slide
    
    func openNextModule(view: UIViewController) {
        let viewControllerSymbols = TwelthSlideRouter.build()
        view.present(viewControllerSymbols, animated: true)
    }
}
