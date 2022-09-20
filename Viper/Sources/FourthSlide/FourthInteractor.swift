//
//  FourthInteractor.swift
//  Viper
//
//  Created by Денис Холодков on 19.09.2022.
//

import Foundation

protocol FourthInteractorProtocol: AnyObject {
    func getDataFromEntity(entity: FourthEntity)
}

class FourthInteractor {
    weak var presenter: FourthPresenterProtocol?
}

extension FourthInteractor: FourthInteractorProtocol {
    func getDataFromEntity(entity: FourthEntity) {
        
    }
}
