//
//  MainSlideRouter.swift
//  Viper
//
//  Created by Denis on 16.09.2022.
//

import UIKit

// проктол
// слабая ссылка на презентер

// MARK: - RouterProtocol

protocol MainSlideRouterProtocol: AnyObject {
    func openNextModule(view: UIViewController?)
}

// MARK: - Router

final class MainSlideRouter {
    weak var presenter: MainSlidePresenterProtocol?
}

// MARK: - Extension

extension MainSlideRouter: MainSlideRouterProtocol {
    
    // MARK: - Module Builder
    
    static func build() -> MainSlideViewController {
        let entity = MainSlideEntity()
        let interactor = MainSlideInteractor(entity: entity)
        let router = MainSlideRouter()
        let presenter = MainSlidePresenter(interactor: interactor, router: router)
        let viewController = MainSlideViewController(presenter: presenter)
        presenter.view = viewController
        interactor.presenter = presenter
        router.presenter = presenter
        return viewController
    }
    
    // MARK: - Next Slide
    
    func openNextModule(view: UIViewController?) {
        guard let view = view else { return }
        let viewControllerSlide = SecondSlideRouter.build()
        view.present(viewControllerSlide, animated: true)
    }
}
