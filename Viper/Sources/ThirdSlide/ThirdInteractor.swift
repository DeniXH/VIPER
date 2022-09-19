//
//  ThirdInteractor.swift
//  Viper
//
//  Created by Денис Холодков on 18.09.2022.
//

import Foundation
// протокол
// слабая ссылка на презентер

protocol ThirdInteractorProtocol: AnyObject {

}

class ThirdInteractor: ThirdInteractorProtocol {
    weak var presenter: ThirdPresenterProtocol?
}
