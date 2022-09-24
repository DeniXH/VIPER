//
//  ThirdRouter.swift
//  Viper
//
//  Created by Денис Холодков on 19.09.2022.
//

import Foundation
import UIKit

protocol ThirdRouterProtocol: AnyObject {
    func openNextModule(view: UIViewController)
}

class ThirdRouter {
    weak var presenter: ThirdPresenterProtocol?
}

extension ThirdRouter: ThirdRouterProtocol {
    func openNextModule(view: UIViewController) {
        let viewControllerSymbols = FourthModuleBuilder.build()
        view.present(viewControllerSymbols, animated: true)
    }
}
