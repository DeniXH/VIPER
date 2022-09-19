//
//  Entity.swift
//  Viper
//
//  Created by Денис Холодков on 18.09.2022.
//

import Foundation
// протокол
// слабая ссылка интерактор
protocol SlideEntityProtocol {

}

class SlideEntity: SlideEntityProtocol {
    weak var interactor: SlideInteractorProtocol?
}

