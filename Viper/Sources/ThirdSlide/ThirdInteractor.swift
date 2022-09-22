//
//  ThirdInteractor.swift
//  Viper
//
//  Created by Денис Холодков on 19.09.2022.
//

import Foundation

protocol ThirdInteractorProtocol: AnyObject {
    func getDataFromEntity(entity: ThirdEntity)
}

class ThirdInteractor {
    weak var presenter: ThirdPresenterProtocol?
}

extension ThirdInteractor: ThirdInteractorProtocol {
    func getDataFromEntity(entity: ThirdEntity) {

    }
}
