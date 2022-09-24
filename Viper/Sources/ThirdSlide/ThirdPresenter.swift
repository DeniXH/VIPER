//
//  ThirdPresenter.swift
//  Viper
//
//  Created by Денис Холодков on 19.09.2022.
//

import UIKit

// MARK: - PresenterProtocol

protocol ThirdPresenterProtocol: AnyObject {
    func openNextModule(view: UIViewController)
    func setScreenParameters() -> ScreenSet
}

// MARK: - Presenter

final class ThirdPresenter: ThirdPresenterProtocol {
    
    // MARK: - References
    
    weak var view: ThirdViewProtocol?
    var interactor: ThirdInteractorProtocol
    var router: ThirdRouterProtocol
    
    // MARK: - Initializer
    
    init(interactor: ThirdInteractorProtocol, router: ThirdRouterProtocol) {
        self.interactor = interactor
        self.router = router
    }
    
    // MARK: - Interactor Request
    
    func setScreenParameters() -> ScreenSet {
        return interactor.getContentScreens()
    }
    
    // MARK: - Router Request
    
    func openNextModule(view: UIViewController) {
        router.openNextModule(view: view)
    }
}
