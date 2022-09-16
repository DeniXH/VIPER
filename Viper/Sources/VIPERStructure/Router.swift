//
//  Router.swift
//  Viper
//
//  Created by Denis on 16.09.2022.
//

import Foundation
// проктол
// слабая ссылка на презентер

protocol RouterProtocol: AnyObject {
    
}

class Router: RouterProtocol {
    weak var presenter: PresenterProtocol?
}
