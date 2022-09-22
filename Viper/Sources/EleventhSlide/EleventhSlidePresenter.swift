//
//  EleventhSlidePresenter.swift
//  Viper
//
//  Created by Денис Холодков on 22.09.2022.
//

import Foundation
import UIKit

protocol EleventhSlidePresenterProtocol: AnyObject {
    func openNextModule(view: UIViewController)
}

class EleventhSlidePresenter: EleventhSlidePresenterProtocol {
    weak var view: EleventhSlideViewProtocol?
    var interactor: EleventhSlideInteractorProtocol
    var router: EleventhSlideRouterProtocol

    init(interactor: EleventhSlideInteractorProtocol, router: EleventhSlideRouterProtocol) {
        self.interactor = interactor
        self.router = router
    }

    func openNextModule(view: UIViewController) {
        router.openNextModule(view: view)
    }
}
