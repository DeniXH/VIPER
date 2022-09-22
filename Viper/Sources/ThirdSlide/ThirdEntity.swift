//
//  ThirdEntity.swift
//  Viper
//
//  Created by Денис Холодков on 19.09.2022.
//

import Foundation

protocol ThirdEntityProtocol {}

class ThirdEntity: ThirdEntityProtocol {
    weak var interactor: ThirdInteractorProtocol?
}
