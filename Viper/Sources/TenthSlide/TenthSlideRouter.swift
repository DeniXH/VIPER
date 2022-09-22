//
//  TenthSlideRouter.swift
//  Viper
//
//  Created by Денис Холодков on 22.09.2022.
//

import Foundation
import UIKit

protocol TenthSlideRouterProtocol: AnyObject {
    func openNextModule(view: UIViewController)
}

class TenthSlideRouter {
    weak var presenter: TenthSlidePresenterProtocol?
}

extension TenthSlideRouter: TenthSlideRouterProtocol {
    func openNextModule(view: UIViewController) {
        let viewControllerSlide = EleventhSlideModuleBuilder.build()
        // presenter.функция роутера, с параметром ввиде контроллера
        view.present(viewControllerSlide, animated: true)
    }
}
