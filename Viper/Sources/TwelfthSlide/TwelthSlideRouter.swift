//
//  TwelthSlideRouter.swift
//  Viper
//
//  Created by Денис Холодков on 22.09.2022.
//

import Foundation
import UIKit

protocol TwelthSlideRouterProtocol: AnyObject {
    func openNextModule(view: UIViewController)
}

class TwelthSlideRouter {
    weak var presenter: TwelthSlidePresenterProtocol?
}

extension TwelthSlideRouter: TwelthSlideRouterProtocol {
    func openNextModule(view: UIViewController) {
        let viewControllerSymbols = ThirteenthSlideModuleBuilder.build()
        view.present(viewControllerSymbols, animated: true)
    }
}
