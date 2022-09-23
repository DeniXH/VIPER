//
//  TenthSlideEntity.swift
//  Viper
//
//  Created by Денис Холодков on 22.09.2022.
//

import Foundation
// протокол
// слабая ссылка интерактор
protocol TenthSlideEntityProtocol {
}

class TenthSlideEntity: TenthSlideEntityProtocol {
    weak var interactor: TenthSlideInteractorProtocol?
}
