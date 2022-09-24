//
//  SecondSlidePresenter.swift
//  Viper
//
//  Created by Денис Холодков on 18.09.2022.
//

import UIKit

// протокол
// слабая ссылка на view
// сильная ссылка на интерактор
// сильная ссылка на роутер

// MARK: - PresenterProtocol

protocol SecondSlidePresenterProtocol: AnyObject {
    func openNextModule(view: UIViewController)
    func setScreenParameters() -> ScreenSet
}

// MARK: - Presenter

final class SecondSlidePresenter: SecondSlidePresenterProtocol {
    
    // MARK: - References
    
    weak var view: SecondSlideViewProtocol?
    var interactor: SecondSlideInteractorProtocol
    var router: SecondSlideRouterProtocol
    
    // MARK: - Initializer
    
    init(interactor: SecondSlideInteractorProtocol, router: SecondSlideRouterProtocol) {
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

