//
//  Entity.swift
//  Viper
//
//  Created by Denis on 16.09.2022.
//

import Foundation
// протокол
// слабая ссылка интерактор
protocol EntityProtocol {
    
}

class Entity: EntityProtocol {
    weak var interactor: InteractorProtocol? 
}
