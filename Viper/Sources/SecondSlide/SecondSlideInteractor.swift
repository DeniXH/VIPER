//
//  SecondSlideInteractor.swift
//  Viper
//
//  Created by Денис Холодков on 18.09.2022.
//

import Foundation
// протокол
// слабая ссылка на презентер

protocol SecondSlideInteractorProtocol: AnyObject {
}

class SecondSlideInteractor: SecondSlideInteractorProtocol {
    weak var presenter: SecondSlidePresenterProtocol?
}

