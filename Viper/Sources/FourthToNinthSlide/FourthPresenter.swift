//
//  FourthPresenter.swift
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

protocol FourthPresenterProtocol: AnyObject {
    func updateViewContent(model: ModelFromInteractor)
    func buttonRightPressed()
    func buttonLeftPressed()
}

// MARK: - Presenter

final class FourthPresenter: FourthPresenterProtocol {
    
    // MARK: - References
    
    weak var view: FourthViewProtocol?
    var interactor: FourthInteractorProtocol
    var router: FourthRouterProtocol
    
    // MARK: - Initializers
    
    init(interactor: FourthInteractorProtocol, router: FourthRouterProtocol) {
        self.interactor = interactor
        self.router = router
    }
    
    // MARK:
    
    func updateViewContent(model: ModelFromInteractor) {
        view?.setupView(model: model)
    }
    
    // MARK: - Entity Requests
    
    private func getNextStep() -> Bool? {
        return interactor.nextStepView()
    }
    
    private func getPreviosStep() -> Bool? {
        return interactor.previosStepView()
    }
    
    // MARK: - Router Requests
    
    func buttonRightPressed() {
        let nextStep = getNextStep()
        guard nextStep != nil else { return }
        router.openNextModule(view: view as? UIViewController)
    }
    
    func buttonLeftPressed() {
        let previousStep = getPreviosStep()
        guard previousStep != nil else { return }
        router.openPreviousModule(view: view as? UIViewController)
    }
}
