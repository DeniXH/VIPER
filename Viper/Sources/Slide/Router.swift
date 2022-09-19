//
//  Router.swift
//  Viper
//
//  Created by Денис Холодков on 18.09.2022.
//

import Foundation
// проктол
// слабая ссылка на презентер

protocol SlideRouterProtocol: AnyObject {

}

class SlideRouter: SlideRouterProtocol {
    weak var presenter: SlidePresenterProtocol?
}

