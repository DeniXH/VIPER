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
    func openNextModule(vc: UIViewController)
}

class MainSlideRouter {
    weak var presenter: MainSlidePresenterProtocol?
}

extension MainSlideRouter: MainSlideRouterProtocol {
    func openNextModule(vc: UIViewController) {
        let viewControllerSlide = SlideModuleBuilder.build()
        // presenter.функция роутера, с параметром ввиде контроллера
        vc.present(viewControllerSlide, animated: true)
    }
}
