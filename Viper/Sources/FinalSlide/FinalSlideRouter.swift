//
//  FinalSlideRouter.swift
//  Viper
//
//  Created by Денис Холодков on 22.09.2022.
//

import UIKit

// MARK: - RouterProtocol

protocol FinalSlideRouterProtocol: AnyObject {
    func openNextModule(view: UIViewController)
}

// MARK: - Router

final class FinalSlideRouter {
    weak var presenter: FinalSlidePresenterProtocol?
}

// MARK: - Extension

extension FinalSlideRouter: FinalSlideRouterProtocol {
    
    // MARK: - Module Builder
    
    static func build() -> FinalSlideViewController {
        let entity = FinalSlideEntity()
        let interactor = FinalSlideInteractor(entity: entity)
        let router = FinalSlideRouter()
        let presenter = FinalSlidePresenter(interactor: interactor, router: router)
        let viewController = FinalSlideViewController(presenter: presenter)
        presenter.view = viewController
        interactor.presenter = presenter
        router.presenter = presenter
        return viewController
    }
    
    // MARK: - Next Slide
    
    func openNextModule(view: UIViewController) {
        let viewControllerSymbols = MainSlideRouter.build()
        view.present(viewControllerSymbols, animated: true)
    }
}
