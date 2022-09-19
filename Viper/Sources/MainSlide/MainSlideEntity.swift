//
//  Entity.swift
//  Viper
//
//  Created by Denis on 16.09.2022.
//

import Foundation
// протокол
// слабая ссылка интерактор
protocol MainSlideEntityProtocol {
    
}

class MainSlideEntity: MainSlideEntityProtocol {
    weak var interactor: MainSlideInteractorProtocol? 
}
