//
//  FinalSlidePresenter.swift
//  Viper
//
//  Created by Денис Холодков on 22.09.2022.
//

import UIKit

// MARK: - PresenterProtocol

protocol FinalSlidePresenterProtocol: AnyObject {
    func openNextModule(view: UIViewController)
    func setScreenParameters() -> (labelText: String, person: [String])
}

// MARK: - Presenter

final class FinalSlidePresenter: FinalSlidePresenterProtocol {
    
    // MARK: - References
    
    weak var view: FinalSlideViewProtocol?
    var interactor: FinalSlideInteractorProtocol
    var router: FinalSlideRouterProtocol
    
    // MARK: - Initializer
    
    init(interactor: FinalSlideInteractorProtocol, router: FinalSlideRouterProtocol) {
        self.interactor = interactor
        self.router = router
    }
    
    // MARK: - Interactor Request
    
    func setScreenParameters() -> (labelText: String, person: [String]) {
        return interactor.getContentScreens()
    }
    
    // MARK: - Router Request
    
    func openNextModule(view: UIViewController) {
        router.openNextModule(view: view)
    }
}
