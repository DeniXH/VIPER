//
//  SecondSlideRouter.swift
//  Viper
//
//  Created by Денис Холодков on 18.09.2022.
//

import UIKit

// проктол
// слабая ссылка на презентер

// MARK: - RouterProtocol

protocol SecondSlideRouterProtocol: AnyObject {
    func openNextModule(view: UIViewController)
}

// MARK: - Router

final class SecondSlideRouter {
    weak var presenter: SecondSlidePresenterProtocol?
}

// MARK: - Extension

extension SecondSlideRouter: SecondSlideRouterProtocol {
    
    // MARK: - Module Builder
    
    static func build() -> SecondSlideViewController {
        let entity = SecondSlideEntity()
        let interactor = SecondSlideInteractor(entity: entity)
        let router = SecondSlideRouter()
        let presenter = SecondSlidePresenter(interactor: interactor, router: router)
        let viewController = SecondSlideViewController(presenter: presenter)
        presenter.view = viewController
        interactor.presenter = presenter
        router.presenter = presenter
        return viewController
    }
    
    // MARK: - Next Slide
    
    func openNextModule(view: UIViewController) {
        let viewControllerSymbols = ThirdRouter.build()
        view.present(viewControllerSymbols, animated: true)
    }
}
