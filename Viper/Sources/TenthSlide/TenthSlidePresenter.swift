//
//  TenthSlidePresenter.swift
//  Viper
//
//  Created by Денис Холодков on 22.09.2022.
//

import UIKit

// MARK: - PresenterProtocol

protocol TenthSlidePresenterProtocol: AnyObject {
    func openNextModule(view: UIViewController)
    func setScreenParameters() -> ScreenSet
}

// MARK: - Presenter

final class TenthSlidePresenter: TenthSlidePresenterProtocol {
    
    // MARK: - References
    
    weak var view: TenthSlideViewProtocol?
    var interactor: TenthSlideInteractorProtocol
    var router: TenthSlideRouterProtocol
    
    // MARK: - Initializer
    
    init(interactor: TenthSlideInteractorProtocol, router: TenthSlideRouterProtocol) {
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
