//
//  ThirdRouter.swift
//  Viper
//
//  Created by Денис Холодков on 19.09.2022.
//

import UIKit

// MARK: - RouterProtocol

protocol ThirdRouterProtocol: AnyObject {
    func openNextModule(view: UIViewController)
}

// MARK: - Router

final class ThirdRouter {
    weak var presenter: ThirdPresenterProtocol?
}

// MARK: - Extension

extension ThirdRouter: ThirdRouterProtocol {
    
    // MARK: - Module Builder
    
    static func build() -> ThirdViewController {
        let entity = ThirdEntity()
        let interactor = ThirdInteractor(entity: entity)
        let router = ThirdRouter()
        let presenter = ThirdPresenter(interactor: interactor, router: router)
        let viewController = ThirdViewController(presenter: presenter)
        presenter.view = viewController
        interactor.presenter = presenter
        router.presenter = presenter
        return viewController
    }
    
    // MARK: - Next Slide
    
    func openNextModule(view: UIViewController) {
        let viewControllerSymbols = FourthRouter.build()
        view.present(viewControllerSymbols, animated: true)
    }
}
