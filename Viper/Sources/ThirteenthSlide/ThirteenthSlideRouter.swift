//
//  ThirteenthSlideRouter.swift
//  Viper
//
//  Created by Денис Холодков on 22.09.2022.
//

import Foundation
import UIKit

protocol ThirteenthSlideRouterProtocol: AnyObject {
    func openNextModule(view: UIViewController)
}

class ThirteenthSlideRouter {
    weak var presenter: ThirteenthSlidePresenterProtocol?
}

extension ThirteenthSlideRouter: ThirteenthSlideRouterProtocol {
    func openNextModule(view: UIViewController) {
        let viewControllerSymbols = MainSlideModuleBuilder.build()
        view.present(viewControllerSymbols, animated: true)
    }
}
