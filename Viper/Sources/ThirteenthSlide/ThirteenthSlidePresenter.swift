//
//  ThirteenthSlidePresenter.swift
//  Viper
//
//  Created by Денис Холодков on 22.09.2022.
//

import Foundation
import UIKit

protocol ThirteenthSlidePresenterProtocol: AnyObject {
    func openNextModule(view: UIViewController)
    func setScreenParameters() -> ScreenSet
}

class ThirteenthSlidePresenter: ThirteenthSlidePresenterProtocol {
    weak var view: ThirteenthSlideViewProtocol?
    var interactor: ThirteenthSlideInteractorProtocol
    var router: ThirteenthSlideRouterProtocol
    
    init(interactor: ThirteenthSlideInteractorProtocol, router: ThirteenthSlideRouterProtocol) {
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
