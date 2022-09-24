//
//  EleventhSlidePresenter.swift
//  Viper
//
//  Created by Денис Холодков on 22.09.2022.
//

import UIKit

// MARK: - PresenterProtocol

protocol EleventhSlidePresenterProtocol: AnyObject {
    func openNextModule(view: UIViewController)
    func setScreenParameters() -> ScreenSet
}

// MARK: - Presenter

final class EleventhSlidePresenter: EleventhSlidePresenterProtocol {
    
    // MARK: - References
    
    weak var view: EleventhSlideViewProtocol?
    var interactor: EleventhSlideInteractorProtocol
    var router: EleventhSlideRouterProtocol
    
    // MARK: - Initializer
    
    init(interactor: EleventhSlideInteractorProtocol, router: EleventhSlideRouterProtocol) {
        self.interactor = interactor
        self.router = router
    }
    
    // MARK: - Interactor Request
    
    func setScreenParameters() -> ScreenSet {
        return interactor.getContentScreens()
    }
    
    // MARK: - Router Request
    
    func openNextModule(view: UIViewController) {
        router.openNextModule(view: view)
    }
}
