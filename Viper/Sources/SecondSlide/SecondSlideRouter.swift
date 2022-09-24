//
//  Router.swift
//  Viper
//
//  Created by Денис Холодков on 18.09.2022.
//

import Foundation
import UIKit
// проктол
// слабая ссылка на презентер

protocol SecondSlideRouterProtocol: AnyObject {
    func openNextModule(view: UIViewController)
}

class SecondSlideRouter {
    weak var presenter: SecondSlidePresenterProtocol?
}

extension SecondSlideRouter: SecondSlideRouterProtocol {
    func openNextModule(view: UIViewController) {
        let viewControllerSymbols = ThirdModuleBuilder.build()
        view.present(viewControllerSymbols, animated: true)
    }
}
