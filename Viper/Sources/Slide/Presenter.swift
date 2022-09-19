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

protocol SlidePresenterProtocol: AnyObject {

}

class SlidePresenter: SlidePresenterProtocol {
    weak var view: SlideViewProtocol?
    var interactor: SlideInteractorProtocol
    var router: SlideRouterProtocol

    init(interactor: SlideInteractorProtocol, router: SlideRouterProtocol) {
        self.interactor = interactor
        self.router = router
    }
}

