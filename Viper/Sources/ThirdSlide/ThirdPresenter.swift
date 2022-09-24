//
//  ThirdPresenter.swift
//  Viper
//
//  Created by Денис Холодков on 19.09.2022.
//

import Foundation
import UIKit

protocol ThirdPresenterProtocol: AnyObject {
    func openNextModule(view: UIViewController)
    func setScreenParameters() -> ScreenSet
}

class ThirdPresenter: ThirdPresenterProtocol {
    weak var view: ThirdViewProtocol?
    var interactor: ThirdInteractorProtocol
    var router: ThirdRouterProtocol
    
    init(interactor: ThirdInteractorProtocol, router: ThirdRouterProtocol) {
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
