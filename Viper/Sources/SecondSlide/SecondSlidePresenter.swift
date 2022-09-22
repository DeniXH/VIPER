//
//  Presenter.swift
//  Viper
//
//  Created by Денис Холодков on 18.09.2022.
//

import Foundation
// протокол
// слабая ссылка на view
// сильная ссылка на интерактор
// сильная ссылка на роутер

protocol SecondSlidePresenterProtocol: AnyObject {

}

class SecondSlidePresenter: SecondSlidePresenterProtocol {
    weak var view: SecondSlideViewProtocol?
    var interactor: SecondSlideInteractorProtocol
    var router: SecondSlideRouterProtocol

    init(interactor: SecondSlideInteractorProtocol, router: SecondSlideRouterProtocol) {
        self.interactor = interactor
        self.router = router
    }
}

