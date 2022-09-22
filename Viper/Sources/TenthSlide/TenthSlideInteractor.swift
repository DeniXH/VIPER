//
//  TenthSlideInteractor.swift
//  Viper
//
//  Created by Денис Холодков on 22.09.2022.
//

import Foundation

protocol TenthSlideInteractorProtocol: AnyObject {
}

class TenthSlideInteractor: TenthSlideInteractorProtocol {
    weak var presenter: TenthSlidePresenterProtocol?
}
