//
//  TwelthSlidePresenter.swift
//  Viper
//
//  Created by Денис Холодков on 22.09.2022.
//

import Foundation
import UIKit

protocol TwelthSlidePresenterProtocol: AnyObject {
    func openNextModule(view: UIViewController)
    func setScreenParameters() -> ScreenSet
}

class TwelthSlidePresenter: TwelthSlidePresenterProtocol {
    weak var view: TwelthSlideViewProtocol?
    var interactor: TwelthSlideInteractorProtocol
    var router: TwelthSlideRouterProtocol
    
    init(interactor: TwelthSlideInteractorProtocol, router: TwelthSlideRouterProtocol) {
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
