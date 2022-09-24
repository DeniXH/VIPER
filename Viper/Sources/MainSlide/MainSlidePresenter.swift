//
//  Presenter.swift
//  Viper
//
//  Created by Denis on 16.09.2022.
//

import Foundation
import UIKit
// протокол
// слабая ссылка на view
// сильная ссылка на интерактор
// сильная ссылка на роутер

protocol MainSlidePresenterProtocol: AnyObject {
    func openNextModule(view: UIViewController)
    func setScreenParameters() -> ScreenSet
}

class MainSlidePresenter: MainSlidePresenterProtocol {
    weak var view: MainSlideViewProtocol?
    var interactor: MainSlideInteractorProtocol
    var router: MainSlideRouterProtocol
    
    init(interactor: MainSlideInteractorProtocol, router: MainSlideRouterProtocol) {
        self.interactor = interactor
        self.router = router
    }
    
    func setScreenParameters() -> ScreenSet {
        return interactor.getContentScreens()
    }
    
    func openNextModule(view: UIViewController) {
        router.openNextModule(view: view)
    }
}
