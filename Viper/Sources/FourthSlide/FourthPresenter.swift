//
//  FourtsPresenter.swift
//  Viper
//
//  Created by Денис Холодков on 19.09.2022.
//

import Foundation
import UIKit

protocol FourthPresenterProtocol: AnyObject {
}

class FourthPresenter: FourthPresenterProtocol {
    weak var view: FourthViewProtocol?
    var interactor: FourthInteractorProtocol
    var router: FourthRouterProtocol

    init(interactor: FourthInteractorProtocol, router: FourthRouterProtocol) {
        self.interactor = interactor
        self.router = router
    }

    func changeInfo(info: [String]) {
        router.changeData(info: info)
    }
}
