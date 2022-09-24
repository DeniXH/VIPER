//
//  TwelthSlidePresenter.swift
//  Viper
//
//  Created by Денис Холодков on 22.09.2022.
//

import UIKit

// MARK: - PresenterProtocol

protocol TwelthSlidePresenterProtocol: AnyObject {
    func openNextModule(view: UIViewController)
    func setScreenParameters() -> ScreenSet
}

// MARK: - Presenter

final class TwelthSlidePresenter: TwelthSlidePresenterProtocol {
    
    // MARK: - References
    
    weak var view: TwelthSlideViewProtocol?
    var interactor: TwelthSlideInteractorProtocol
    var router: TwelthSlideRouterProtocol
    
    // MARK: - Initializer
    
    init(interactor: TwelthSlideInteractorProtocol, router: TwelthSlideRouterProtocol) {
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
