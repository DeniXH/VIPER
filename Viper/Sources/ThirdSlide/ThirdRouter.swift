//
//  ThirdRouter.swift
//  Viper
//
//  Created by Денис Холодков on 18.09.2022.
//

import Foundation
// проктол
// слабая ссылка на презентер

protocol ThirdRouterProtocol: AnyObject {

}

class ThirdRouter: ThirdRouterProtocol {
    weak var presenter: ThirdPresenterProtocol?
}
