//
//  FourthRouter.swift
//  Viper
//
//  Created by Денис Холодков on 19.09.2022.
//

import Foundation
import UIKit

protocol FourthRouterProtocol: AnyObject {
   func openNextModule(view: UIViewController)
   func changeData(info: FourthPresenterProtocol)
}

class FourthRouter {
    weak var presenter: FourthPresenterProtocol?
}

extension FourthRouter: FourthRouterProtocol {
    func openNextModule(view: UIViewController) {
        let viewControllerSymbols = FourthModuleBuilder.build()
        view.present(viewControllerSymbols, animated: true)
    }

    func changeData(info: FourthPresenterProtocol) {
        presenter.
    }
}
