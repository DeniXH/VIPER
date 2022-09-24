//
//  Presenter.swift
//  Viper
//
//  Created by Денис Холодков on 18.09.2022.
//

import Foundation
import UIKit
// протокол
// слабая ссылка на view
// сильная ссылка на интерактор
// сильная ссылка на роутер

protocol SecondSlidePresenterProtocol: AnyObject {
    func openNextModule(view: UIViewController)
    func setScreenParameters() -> ScreenSet
}

class SecondSlidePresenter: SecondSlidePresenterProtocol {
    weak var view: SecondSlideViewProtocol?
    var interactor: SecondSlideInteractorProtocol
    var router: SecondSlideRouterProtocol
    
    init(interactor: SecondSlideInteractorProtocol, router: SecondSlideRouterProtocol) {
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

