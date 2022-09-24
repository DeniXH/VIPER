//
//  Router.swift
//  Viper
//
//  Created by Denis on 16.09.2022.
//

import Foundation
import UIKit
// проктол
// слабая ссылка на презентер

protocol MainSlideRouterProtocol: AnyObject {
    func openNextModule(view: UIViewController)
}

class MainSlideRouter {
    weak var presenter: MainSlidePresenterProtocol?
}

extension MainSlideRouter: MainSlideRouterProtocol {
    func openNextModule(view: UIViewController) {
        let viewControllerSlide = SecondSlideModuleBuilder.build()
        // presenter.функция роутера, с параметром ввиде контроллера
        view.present(viewControllerSlide, animated: true)
    }
}
