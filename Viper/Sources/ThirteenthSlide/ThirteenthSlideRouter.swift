//
//  ThirteenthSlideRouter.swift
//  Viper
//
//  Created by Денис Холодков on 22.09.2022.
//

import UIKit

// MARK: - RouterProtocol

protocol ThirteenthSlideRouterProtocol: AnyObject {
    func openNextModule(view: UIViewController)
}

// MARK: - Router

final class ThirteenthSlideRouter {
    weak var presenter: ThirteenthSlidePresenterProtocol?
}

// MARK: - Extension

extension ThirteenthSlideRouter: ThirteenthSlideRouterProtocol {
    
    // MARK: - Module Builder
    
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
    
    // MARK: - Next Slide
    
    func openNextModule(view: UIViewController) {
        let viewControllerSymbols = FinalSlideRouter.build()
        view.present(viewControllerSymbols, animated: true)
    }
}
