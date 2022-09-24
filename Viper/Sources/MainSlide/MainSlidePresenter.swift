//
//  MainSlidePresenter.swift
//  Viper
//
//  Created by Denis on 16.09.2022.
//

import UIKit

// протокол
// слабая ссылка на view
// сильная ссылка на интерактор
// сильная ссылка на роутер

// MARK: - PresenterProtocol

protocol MainSlidePresenterProtocol: AnyObject {
    func updateViewContent(model: ScreenSet)
    func openNextModule()
    func setScreenParameters()
}

// MARK: - Presenter

final class MainSlidePresenter: MainSlidePresenterProtocol {
    
    // MARK: - References
    
    weak var view: MainSlideViewProtocol?
    var interactor: MainSlideInteractorProtocol
    var router: MainSlideRouterProtocol
    
    // MARK: - Initializer
    
    init(interactor: MainSlideInteractorProtocol, router: MainSlideRouterProtocol) {
        self.interactor = interactor
        self.router = router
    }
    
    // MARK: - Update View Content
    
    func updateViewContent(model: ScreenSet) {
        view?.setView(model: model)
    }
    
    // MARK: - Interacctor Request
    
    func setScreenParameters() {
        interactor.getContentScreens()
    }
    
    // MARK: - Router Request
    
    func openNextModule() {
        router.openNextModule(view: view as? UIViewController)
    }
}
