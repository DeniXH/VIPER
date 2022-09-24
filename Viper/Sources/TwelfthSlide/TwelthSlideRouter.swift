//
//  TwelthSlideRouter.swift
//  Viper
//
//  Created by Денис Холодков on 22.09.2022.
//

import UIKit

// MARK: - RouterProtocol

protocol TwelthSlideRouterProtocol: AnyObject {
    func openNextModule(view: UIViewController)
}

// MARK: - Router

final class TwelthSlideRouter {
    weak var presenter: TwelthSlidePresenterProtocol?
}

// MARK: - Extension

extension TwelthSlideRouter: TwelthSlideRouterProtocol {
    
    // MARK: - Module Builder
    
    static func build() -> TwelthSlideViewController {
        let entity = TwelthSlideEntity()
        let interactor = TwelthSlideInteractor(entity: entity)
        let router = TwelthSlideRouter()
        let presenter = TwelthSlidePresenter(interactor: interactor, router: router)
        let viewController = TwelthSlideViewController(presenter: presenter)
        presenter.view = viewController
        interactor.presenter = presenter
        router.presenter = presenter
        return viewController
    }
    
    // MARK: - Next Slide
    
    func openNextModule(view: UIViewController) {
        let viewControllerSymbols = ThirteenthSlideRouter.build()
        view.present(viewControllerSymbols, animated: true)
    }
}
