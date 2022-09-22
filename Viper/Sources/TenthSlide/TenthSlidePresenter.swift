//
//  TenthSlidePresenter.swift
//  Viper
//
//  Created by Денис Холодков on 22.09.2022.
//

import Foundation
import UIKit

protocol TenthSlidePresenterProtocol: AnyObject {
    func openNextModule(view: UIViewController)
}

class TenthSlidePresenter: TenthSlidePresenterProtocol {
    weak var view: TenthSlideViewProtocol?
    var interactor: TenthSlideInteractorProtocol
    var router: TenthSlideRouterProtocol

    init(interactor: TenthSlideInteractorProtocol, router: TenthSlideRouterProtocol) {
        self.interactor = interactor
        self.router = router
    }

    func openNextModule(view: UIViewController) {
        router.openNextModule(view: view)
    }
}