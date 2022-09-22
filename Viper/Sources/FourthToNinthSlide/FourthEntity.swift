//
//  ThirdEntity.swift
//  Viper
//
//  Created by Денис Холодков on 18.09.2022.
//

import Foundation
// протокол
// слабая ссылка интерактор
protocol FourthEntityProtocol {}

class FourthSlideEntity: FourthEntityProtocol {
    weak var interactor: FourthInteractorProtocol?
}

