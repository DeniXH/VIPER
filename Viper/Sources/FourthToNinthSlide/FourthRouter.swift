//
//  FourthRouter.swift
//  Viper
//
//  Created by Денис Холодков on 18.09.2022.
//

import UIKit

// проктол
// слабая ссылка на презентер

// MARK: - RouterProtocol

protocol FourthRouterProtocol: AnyObject {
    func openNextModule(view: UIViewController?)
    func openPreviousModule(view: UIViewController?)
}

// MARK: - Router

final class FourthRouter: FourthRouterProtocol {
    
    // MARK: - References
    
    weak var presenter: FourthPresenterProtocol?
    
    // MARK: - Open Modules
    
    func openNextModule(view: UIViewController?) {
        guard let view = view else { return }
        view.present(TenthSlideRouter.build(), animated: true)
    }
    
    func openPreviousModule(view: UIViewController?) {
        guard let view = view else { return }
        view.dismiss(animated: true)
    }
}

// MARK: - Extension

extension FourthRouter {
    static func build() -> FourthViewController {
        let entity = FourthSlideEntity()
        let interactor = FourthInteractor(entity: entity)
        let router = FourthRouter()
        let presenter = FourthPresenter(interactor: interactor, router: router)
        let viewController = FourthViewController(presenter: presenter)
        presenter.view = viewController
        interactor.presenter = presenter
        router.presenter = presenter
        return viewController
    }
}
