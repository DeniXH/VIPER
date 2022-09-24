//
//  SecondSlideInteractor.swift
//  Viper
//
//  Created by Денис Холодков on 18.09.2022.
//

import Foundation
import UIKit
// протокол
// слабая ссылка на презентер

protocol SecondSlideInteractorProtocol: AnyObject {
    func getContentScreens() -> ScreenSet
}

class SecondSlideInteractor: SecondSlideInteractorProtocol {
    weak var presenter: SecondSlidePresenterProtocol?
    var entity: SecondSlideEntityProtocol?

    init(entity: SecondSlideEntityProtocol) {
        self.entity = entity
    }

    func getContentScreens() -> ScreenSet {
        var screen: ScreenSet
        screen.imageName = ""
        screen.labelText = ""
        if let settings = entity?.screenSettings() {
            screen = settings
        }
        return screen
    }
}
