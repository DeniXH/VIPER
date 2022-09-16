//
//  Presenter.swift
//  Viper
//
//  Created by Denis on 16.09.2022.
//

import Foundation
// протокол
// слабая ссылка на view
// сильная ссылка на интерактор
// сильная ссылка на роутер

protocol PresenterProtocol: AnyObject {
   
}

class Presenter: PresenterProtocol {
    weak var view: ViewProtocol?
    var interactor: InteractorProtocol
    var router: RouterProtocol
    
    init(interactor: InteractorProtocol, router: RouterProtocol) {
        self.interactor = interactor
        self.router = router
    }
}
