//
//  Interactor.swift
//  Viper
//
//  Created by Denis on 16.09.2022.
//

import Foundation
// протокол
// слабая ссылка на презентер

protocol InteractorProtocol: AnyObject {
   
}

class Interactor: InteractorProtocol {
    weak var presenter: PresenterProtocol?
}
