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

protocol FourthPresenterProtocol: AnyObject {
    func getNextStep() -> ModelFromInteractor
    func getPreviosStep() -> ModelFromInteractor
    func firstSlide() -> ModelFromInteractor
}

class FourthPresenter: FourthPresenterProtocol {
    weak var view: FourthViewProtocol?
    var interactor: FourthInteractorProtocol
    var router: FourthRouterProtocol
    
    init(interactor: FourthInteractorProtocol, router: FourthRouterProtocol) {
        self.interactor = interactor
        self.router = router
    }
    
    func getNextStep() -> ModelFromInteractor {
        return interactor.nextStepView()
    }
    
    func getPreviosStep() -> ModelFromInteractor {
        return interactor.previosStepView()
    }
    
    func firstSlide() -> ModelFromInteractor {
        return interactor.firstView()
    }
}
