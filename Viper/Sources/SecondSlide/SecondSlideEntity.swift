//
//  SecondSlideEntity.swift
//  Viper
//
//  Created by Денис Холодков on 18.09.2022.
//

import Foundation
// протокол
// слабая ссылка интерактор
protocol SecondSlideEntityProtocol {

}

class SecondSlideEntity: SecondSlideEntityProtocol {
    weak var interactor: SecondSlideInteractorProtocol?
}

