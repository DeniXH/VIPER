//
//  ThirteenthSlidePresenter.swift
//  Viper
//
//  Created by Денис Холодков on 22.09.2022.
//

import UIKit

// MARK: - PresenterProtocol

protocol ThirteenthSlidePresenterProtocol: AnyObject {
    func openNextModule(view: UIViewController)
    func setScreenParameters() -> ScreenSet
}

// MARK: - Presenter

final class ThirteenthSlidePresenter: ThirteenthSlidePresenterProtocol {
    
    // MARK: - References
    
    weak var view: ThirteenthSlideViewProtocol?
    var interactor: ThirteenthSlideInteractorProtocol
    var router: ThirteenthSlideRouterProtocol
    
    // MARK: - Initializer
    
    init(interactor: ThirteenthSlideInteractorProtocol, router: ThirteenthSlideRouterProtocol) {
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
