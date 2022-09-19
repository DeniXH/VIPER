//
//  ThirdPresenter.swift
//  Viper
//
//  Created by Денис Холодков on 18.09.2022.
//

import Foundation
// протокол
// слабая ссылка на view
// сильная ссылка на интерактор
// сильная ссылка на роутер

protocol ThirdPresenterProtocol: AnyObject {

}

class ThirdPresenter: ThirdPresenterProtocol {
    weak var view: ThirdViewProtocol?
    var interactor: ThirdInteractorProtocol
    var router: ThirdRouterProtocol

    init(interactor: ThirdInteractorProtocol, router: ThirdRouterProtocol) {
        self.interactor = interactor
        self.router = router
    }
}
