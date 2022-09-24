//
//  ThirdRouter.swift
//  Viper
//
//  Created by Денис Холодков on 18.09.2022.
//

import Foundation
// проктол
// слабая ссылка на презентер

protocol FourthRouterProtocol: AnyObject {
    
}

class FourthRouter: FourthRouterProtocol {
    weak var presenter: FourthPresenterProtocol?
}
