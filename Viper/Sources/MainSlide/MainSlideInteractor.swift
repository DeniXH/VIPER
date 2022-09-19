//
//  Interactor.swift
//  Viper
//
//  Created by Denis on 16.09.2022.
//

import Foundation
// протокол
// слабая ссылка на презентер

protocol MainSlideInteractorProtocol: AnyObject {
   
}

class MainSlideInteractor: MainSlideInteractorProtocol {
    weak var presenter: MainSlidePresenterProtocol?
}
