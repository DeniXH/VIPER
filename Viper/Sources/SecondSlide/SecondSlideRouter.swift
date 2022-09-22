//
//  Router.swift
//  Viper
//
//  Created by Денис Холодков on 18.09.2022.
//

import Foundation
// проктол
// слабая ссылка на презентер

protocol SecondSlideRouterProtocol: AnyObject {
}

class SecondSlideRouter: SecondSlideRouterProtocol {
    weak var presenter: SecondSlidePresenterProtocol?
}

