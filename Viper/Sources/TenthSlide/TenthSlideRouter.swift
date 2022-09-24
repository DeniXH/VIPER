//
//  TenthSlideRouter.swift
//  Viper
//
//  Created by Денис Холодков on 22.09.2022.
//

import UIKit

// MARK: - RouterProtocol

protocol TenthSlideRouterProtocol: AnyObject {
    func openNextModule(view: UIViewController)
}

// MARK: - Router

final class TenthSlideRouter {
    weak var presenter: TenthSlidePresenterProtocol?
}

// MARK: - Extension

extension TenthSlideRouter: TenthSlideRouterProtocol {
    
    // MARK: - Module Builder
    
    static func build() -> TenthSlideViewController {
        let entity = TenthSlideEntity()
        let interactor = TenthSlideInteractor(entity: entity)
        let router = TenthSlideRouter()
        let presenter = TenthSlidePresenter(interactor: interactor, router: router)
        let viewController = TenthSlideViewController(presenter: presenter)
        presenter.view = viewController
        interactor.presenter = presenter
        router.presenter = presenter
        return viewController
    }
    
    // MARK: - Next Slide
    
    func openNextModule(view: UIViewController) {
        let viewControllerSlide = EleventhSlideRouter.build()
        view.present(viewControllerSlide, animated: true)
    }
}
