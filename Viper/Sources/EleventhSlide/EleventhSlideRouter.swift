//
//  EleventhSlideRouter.swift
//  Viper
//
//  Created by Денис Холодков on 22.09.2022.
//

import Foundation
import UIKit

protocol EleventhSlideRouterProtocol: AnyObject {
    func openNextModule(view: UIViewController)
}

class EleventhSlideRouter {
    weak var presenter: EleventhSlidePresenterProtocol?
}

extension EleventhSlideRouter: EleventhSlideRouterProtocol {
    func openNextModule(view: UIViewController) {
        let viewControllerSymbols = TwelthSlideModuleBuilder.build()
        view.present(viewControllerSymbols, animated: true)
    }
}
